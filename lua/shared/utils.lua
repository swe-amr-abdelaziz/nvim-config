local M = {}

local SEPARATOR = package.config:sub(1, 1)
local SEPARATOR_PATTERN = SEPARATOR == "\\" and "[\\/]" or "/"

local LUA_FILE_PATTERN = "%.lua$"
local LUA_PATH_PATTERN = "lua" .. SEPARATOR_PATTERN .. "(.*)" .. LUA_FILE_PATTERN
local LUA_DIR_PATTERN  = "lua" .. SEPARATOR_PATTERN .. "(.*)$"

--- Checks if a file name is a Lua file
--- @param filename string
--- @return boolean
local function is_lua_file(filename)
  return filename:match(LUA_FILE_PATTERN) ~= nil
end

--- Converts an absolute file path to a Lua module name
--- @param path string The full file path
--- @return string|nil module_name The dot-separated module name, or nil if conversion fails
local function path_to_module(path)
  local module_name = path:match(LUA_PATH_PATTERN)
  if not module_name then return nil end
  return module_name:gsub("[/\\]", ".")
end

--- Checks if a list of files contains any Lua files
--- @param files string[] List of filenames
--- @return boolean
local function has_lua_files(files)
  for _, file in ipairs(files) do
    if is_lua_file(file) then return true end
  end
  return false
end

--- Converts an absolute directory path to a Lua module path
--- @param dir string The full directory path
--- @return string|nil module_path The dot-separated module path, or nil if conversion fails
local function dir_to_module_path(dir)
  local relative_path = dir:match(LUA_DIR_PATTERN)
  if not relative_path then return nil end
  return relative_path:gsub("[/\\]", ".")
end

--- Recursively loads all Lua files in a directory
--- @param dir string|nil The directory to scan
local function load_files_recursively(dir)
  if not dir then return end
  local files = vim.fn.readdir(dir)

  for _, file in ipairs(files) do
    local full_path = vim.fs.joinpath(dir, file)

    if vim.fn.isdirectory(full_path) == 1 then
      load_files_recursively(full_path)
    elseif is_lua_file(file) then
      local module_name = path_to_module(full_path)
      if module_name then
        require(module_name)
      end
    end
  end
end

--- Recursively scans a directory and collects import paths
--- @param dir string|nil The directory to scan
--- @param imports table The table to collect imports into
local function scan_directory_recursively(dir, imports)
  if not dir then return end
  local files = vim.fn.readdir(dir)

  if has_lua_files(files) then
    local module_path = dir_to_module_path(dir)
    if module_path then
      table.insert(imports, { import = module_path })
    end
  end

  for _, file in ipairs(files) do
    local full_path = vim.fs.joinpath(dir, file)
    if vim.fn.isdirectory(full_path) == 1 then
      scan_directory_recursively(full_path, imports)
    end
  end
end

--- Builds an absolute path inside the Neovim config's lua directory
--- Validates that the resulting path exists and is a directory
--- @param folder string Folder name relative to the "lua" directory
--- @return string|nil full_path The absolute path if valid, or nil if not found
local function get_lua_config_path(folder)
  local config_path = vim.fn.stdpath("config")
  local full_path = vim.fs.joinpath(config_path, "lua", folder)

  if vim.fn.isdirectory(full_path) == 0 then
    vim.notify(("Directory does not exist: %s"):format(full_path), vim.log.levels.WARN)
    return nil
  end

  return full_path
end

--- Recursively requires all Lua modules in a given folder
--- This immediately loads and executes all modules found in the directory tree
--- @param folder string The folder name relative to the Neovim config's lua directory
--- @usage require("shared.utils").require_recursively("plugins")
M.require_recursively = function(folder)
  local base_path = get_lua_config_path(folder)
  load_files_recursively(base_path)
end

--- Recursively scans a folder and returns import statements for lazy.nvim
--- Only creates imports for directories that contain at least one Lua file
--- @param folder string The folder name relative to the Neovim config's lua directory
--- @return table imports Array of import tables suitable for lazy.nvim spec
--- @usage local imports = require("shared.utils").lazy_imports_recursively("plugins")
M.lazy_imports_recursively = function(folder)
  local base_path = get_lua_config_path(folder)
  local imports = {}
  scan_directory_recursively(base_path, imports)
  return imports
end

return M
