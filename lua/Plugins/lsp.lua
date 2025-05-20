local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")

local capabilities = cmp_nvim_lsp.default_capabilities()

vim.lsp.buf.hover = function()
    local params = vim.lsp.util.make_position_params()
    vim.lsp.buf_request(0, "textDocument/hover", params, function(err, result, ctx, config)
        if err then
            vim.notify("Hover error: " .. err.message, vim.log.levels.ERROR)
            return
        end
        if not (result and result.contents) then return end

        -- Tamaño personalizado
        local max_width = 80
        local max_height = 20

        local floating_buf, floating_win = vim.lsp.util.open_floating_preview(
            vim.lsp.util.convert_input_to_markdown_lines(result.contents),
            "markdown",
            {
                border = "rounded",
                max_width = max_width,
                max_height = max_height,
            }
        )

        return floating_buf, floating_win
    end)
end

local signs = {
    Error = " ",
    Warn  = " ",
    Hint  = " ",
    Info  = " ",
}

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.api.nvim_create_autocmd("CursorHold", {
    callback = function()
        local opts = {
            focusable = false,
            close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
            border = "rounded",
            source = "always",
            prefix = "",
            scope = "cursor",
        }

        local pos = vim.api.nvim_win_get_cursor(0)
        local line = pos[1] - 1
        local col = pos[2]

        local diagnostics = vim.diagnostic.get(0, { lnum = line })

        for _, diagnostic in ipairs(diagnostics) do
            if col >= diagnostic.col and col <= diagnostic.end_col then
                vim.diagnostic.open_float(nil, opts)
                break
            end
        end
    end
})
vim.o.updatetime = 300



vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
vim.keymap.set('n', 'gy', vim.lsp.buf.type_definition, opts)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
vim.keymap.set({ 'n', 'x' }, '<leader>c', vim.lsp.buf.code_action, opts)

-- Diagnostic
-- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
-- vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>a', vim.diagnostic.setqflist, opts)
-- vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
