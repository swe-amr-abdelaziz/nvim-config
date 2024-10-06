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

return M
