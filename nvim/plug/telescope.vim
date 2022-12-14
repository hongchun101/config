nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').git_files(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <leader>ft <cmd>lua require('telescope.builtin').live_grep(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <leader>fs <cmd>lua require('telescope.builtin').search_history(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <leader>fs <cmd>lua require('telescope.builtin').marks(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <leader>fc <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <leader>fo <cmd>lua require('telescope.builtin').oldfiles(require('telescope.themes').get_dropdown({}))<cr>

"function telescope_buffer_dir()
    "return vim.fn.expand('%:p:h')
"end

lua << EOF
local telescope = require('telescope')
local actions = require('telescope.actions')
telescope.setup{
  defaults = {
    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },
    mappings = {
      i = {
        ["<C-n>"] = actions.cycle_history_next,
        ["<C-p>"] = actions.cycle_history_prev,

        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,

        ["<C-c>"] = actions.close,

        ["<Down>"] = actions.move_selection_next,
        ["<Up>"] = actions.move_selection_previous,

        ["<CR>"] = actions.select_default,
        ["<C-s>"] = actions.select_horizontal,  -- 横分屏显示
        ["<C-v>"] = actions.select_vertical, -- 竖分屏显示
        ["<C-t>"] = actions.select_tab, -- 新tab页显示

        ["<C-u>"] = actions.preview_scrolling_up, -- 预览上翻页
        ["<C-d>"] = actions.preview_scrolling_down, -- 预览下翻页

        ["<PageUp>"] = actions.results_scrolling_up, -- 候选项翻页
        ["<PageDown>"] = actions.results_scrolling_down, -- 候选项翻页

        ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
        ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist, 
        ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
        ["<C-l>"] = actions.complete_tag,
        ["<C-_>"] = actions.which_key, -- keys from pressing <C-/>
      },
      n = {
        ["<esc>"] = actions.close,
        ["<CR>"] = actions.select_default,
        ["<C-s>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,

        ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
        ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
        ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,

        ["j"] = actions.move_selection_next,
        ["k"] = actions.move_selection_previous,
        ["H"] = actions.move_to_top,
        ["M"] = actions.move_to_middle,
        ["L"] = actions.move_to_bottom,

        ["<Down>"] = actions.move_selection_next,
        ["<Up>"] = actions.move_selection_previous,
        ["gg"] = actions.move_to_top,
        ["G"] = actions.move_to_bottom,

        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,

        ["<PageUp>"] = actions.results_scrolling_up,
        ["<PageDown>"] = actions.results_scrolling_down,

        ["?"] = actions.which_key,
      }
    }
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter=true,
      case_mode="smart_case"
    },
  }
}
EOF
