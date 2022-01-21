local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

require('packer').startup(function(use)

    use 'wbthomason/packer.nvim'

    use({
    	"catppuccin/nvim",
	    as = "catppuccin"
    })

    use {{'ms-jpq/coq_nvim', run = ':COQdeps'},
        'ms-jpq/coq.artifacts',
        'ms-jpq/coq.thirdparty'
    }

    use {
        'neovim/nvim-lspconfig',
        'williamboman/nvim-lsp-installer'
    }

    use {'ms-jpq/chadtree', run = ':CHADdeps'}

    if packer_bootstrap then
    	require('packer').sync()
    end

end)
