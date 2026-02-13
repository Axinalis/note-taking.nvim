-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'sainnhe/everforest',
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.everforest_enable_italic = true
      vim.cmd.colorscheme 'everforest'
    end,
  },
  { 
    "ellisonleao/gruvbox.nvim", 
    priority = 1, 
    config = true, 
    opts = {

    }
  },
  {
    'vimwiki/vimwiki',
    lazy = false,
    init = function()
      vim.g.vimwiki_list = {
        {
          path = '~/projects/myWiki',
          syntax = 'default',
          ext = '.md',
        },
      }
    end,
  },
}
