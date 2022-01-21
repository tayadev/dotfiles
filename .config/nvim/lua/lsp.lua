local lsp_installer = require('nvim-lsp-installer')

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
    local opts = {}

    -- Lua
    if server.name == "sumneko_lua" then
        opts.settings = {
            Lua = {
                diagnostics = {
                    globals = { 'vim' }
                },
                workspace = {
                    library = vim.api.nvim_get_runtime_file("", true),
                }
            }
        }
    end

    server:setup(opts)
end)

vim.g.coq_settings = { auto_start = 'shut-up' }

-- TODO: doesn't seem to work yet
require('coq_3p') {
    {
        src = 'repl',
        sh = 'zsh',
        shell = { n = 'node' },
        max_lines = 99,
        deadline = 500,
        unsafe = { "rm", "poweroff", "mv" }
    }
}
