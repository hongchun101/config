if true then
  return {}
end
local M = {}

function M.init()
  M.config()
  -- if vim.g.transparent_background then
  M.background()
  -- end
end

function M.config()
  vim.o.guifont = "FiraMono Nerd Font:h24"
  vim.g.neovide_no_idle = true
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_cursor_vfx_mode = "railgun"
end

function M.background()
  -- local alpha = function()
  --   return string.format("%x", math.floor((255 * vim.g.transparency) or 0.8))
  -- end
  vim.g.neovide_opacity = 1
  vim.g.transparency = 1
  -- vim.g.neovide_background_color = "#0f1117" .. alpha()
end

function M.refresh(run_fps, free_fps)
  vim.g.neovide_refresh_rate = run_fps
  vim.g.neovide_refresh_rate_idle = free_fps
end

return M
