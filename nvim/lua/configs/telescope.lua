local actions = require "telescope.actions"

require("telescope").setup {
  defaults = {
    prompt_prefix = "   ",
    selection_caret = " ",
    entry_prefix = " ",
    sorting_strategy = "ascending",
    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.55,
      },
      width = 0.95,
      height = 0.80,
    },
    mappings = {
      n = { ["q"] = actions.close },
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    },

    path_display = { truncate = 2 },
    extensions_list = { "themes", "terms" },
    extensions = {},
  },
}
