local folder_path = vim.fn.stdpath('config') .. "/lua/Plugins"
local files = vim.loop.fs_scandir(folder_path)

while true do
    local file = vim.loop.fs_scandir_next(files)
    if not file then break end
    if vim.fn.isdirectory(folder_path .. '/' .. file) == 0 and file:match("%.lua$") and not file:match("init.lua") then
        local module_name = file:match("(.+)%.lua")
        require('Plugins.' .. module_name)
    end
end

