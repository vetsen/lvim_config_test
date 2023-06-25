vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.list = false

vim.opt.relativenumber = true

lvim.keys.normal_mode[";"] = ":"

lvim.plugins = {
  "tzachar/cmp-tabnine",
  build = "./install.sh",
  dependencies = "hrsh7th/nvim-cmp",
  event = "InsertEnter",
}
lvim.plugins = {
{
		"simrat39/symbols-outline.nvim",
  config = function()
    require('symbols-outline').setup()
  end
  },
  {
  "folke/trouble.nvim",
    cmd = "TroubleToggle",
	},
{
  "ray-x/lsp_signature.nvim",
  event = "BufRead",
  config = function() require"lsp_signature".on_attach() end,
},
{
  "mrjones2014/nvim-ts-rainbow",
},
{
  "metakirby5/codi.vim",
  cmd = "Codi",
},
{
  "npxbr/glow.nvim",
  ft = {"markdown"}
  -- build = "yay -S glow"
},
{
  "karb94/neoscroll.nvim",
  event = "WinScrolled",
  config = function()
  require('neoscroll').setup({
        -- All these keys will be mapped to their corresponding default scrolling animation
        mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
        '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
        hide_cursor = true,          -- Hide cursor while scrolling
        stop_eof = true,             -- Stop at <EOF> when scrolling downwards
        use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
        respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
        cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
        easing_function = nil,        -- Default easing function
        pre_hook = nil,              -- Function to run before the scrolling animation starts
        post_hook = nil,              -- Function to run after the scrolling animation ends
        })
  end
},

}

lvim.builtin.treesitter.rainbow.enable = true
lvim.builtin.which_key.mappings["t"] = {
  name = "Diagnostics",
  t = { "<cmd>TroubleToggle<cr>", "trouble" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
}
