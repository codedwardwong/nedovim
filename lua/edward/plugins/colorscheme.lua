
return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    style = "storm",      -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
    light_style = "day",  -- The theme is used when the background is set to light
    transparent = true,   -- Enable this to disable setting the background color
    terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
    styles = {
      -- Style to be applied to different syntax groups
      -- Value is any valid attr-list value for `:help nvim_set_hl`
      comments = { italic = true },
      keywords = { italic = true },
      functions = {},
      variables = {},
      -- Background styles. Can be "dark", "transparent" or "normal"
      sidebars = "storm",            -- style for sidebars, see below
      floats = "storm",              -- style for floating windows
    },
    sidebars = { "qf", "help" },    -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
    day_brightness = 0.3,           -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
    hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
    dim_inactive = false,           -- dims inactive windows
    lualine_bold = false,           -- When `true`, section headers in the lualine theme will be bold

    --- You can override specific color groups to use other groups or a hex color
    --- function will be called with a ColorScheme table
    ---@param colors ColorScheme
    on_colors = function(colors)
      colors.border = "#565f89"
    end,

    --- You can override specific highlights to use other groups or a hex color
    --- function will be called with a Highlights and ColorScheme table
    ---@param highlights Highlights
    ---@param colors ColorScheme
    on_highlights = function(highlights, colors)
    end,
  },
  config = function(_, opts)
    require "tokyonight".setup(opts)
    require "tokyonight".load()
  end,
}

-- return {
--   {
--     "folke/tokyonight.nvim",
--     priority = 1000, -- make sure to load this before all the other start plugins
--     config = function()
--       local bg = "#011628"
--       local bg_dark = "#011423"
--       local bg_highlight = "#143652"
--       local bg_search = "#0A64AC"
--       local bg_visual = "#275378"
--       local fg = "#CBE0F0"
--       local fg_dark = "#B4D0E9"
--       local fg_gutter = "#627E97"
--       local border = "#547998"
--
--       require("tokyonight").setup({
--         style = "night"
--       })
--       -- require("tokyonight").setup({
--       --   style = "night",
--       --   on_colors = function(colors)
--       --     colors.bg = bg
--       --     colors.bg_dark = bg_dark
--       --     colors.bg_float = bg_dark
--       --     colors.bg_highlight = bg_highlight
--       --     colors.bg_popup = bg_dark
--       --     colors.bg_search = bg_search
--       --     colors.bg_sidebar = bg_dark
--       --     colors.bg_statusline = bg_dark
--       --     colors.bg_visual = bg_visual
--       --     colors.border = border
--       --     colors.fg = fg
--       --     colors.fg_dark = fg_dark
--       --     colors.fg_float = fg
--       --     colors.fg_gutter = fg_gutter
--       --     colors.fg_sidebar = fg_dark
--       --   end,
--       -- })
--       --
--       -- load the colorscheme here
--       vim.cmd([[colorscheme tokyonight]])
--     end,
--   },
-- }

