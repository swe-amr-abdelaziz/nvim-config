local M = {}

M.require_recursively = function(folder)
  local folder_path = vim.fn.stdpath("config") .. "/lua/" .. folder

  local function load_files(dir)
    local files = vim.fn.readdir(dir)
    for _, file in ipairs(files) do
      local full_path = dir .. "/" .. file
      if vim.fn.isdirectory(full_path) == 1 then
        load_files(full_path)
      elseif file:match("%.lua$") then
        local module_name = full_path:match("lua/(.*)%.lua$"):gsub("/", ".")
        require(module_name)
      end
    end
  end

  load_files(folder_path)
end

M.lazy_imports_recursively = function(folder)
  local folder_path = vim.fn.stdpath("config") .. "/lua/" .. folder
  local imports = {}

  local function contains_lua_file(dir)
    local files = vim.fn.readdir(dir)
    for _, file in ipairs(files) do
      if file:match("%.lua$") then
        return true
      end
    end
    return false
  end

  local function scan_folder(dir)
    local files = vim.fn.readdir(dir)
    if contains_lua_file(dir) then
      local relative_dir = dir:match("lua/(.*)$"):gsub("/", ".")
      table.insert(imports, { import = relative_dir })
    end
    for _, file in ipairs(files) do
      local full_path = dir .. "/" .. file
      if vim.fn.isdirectory(full_path) == 1 then
        scan_folder(full_path)
      end
    end
  end

  scan_folder(folder_path)

  return imports
end

return M
