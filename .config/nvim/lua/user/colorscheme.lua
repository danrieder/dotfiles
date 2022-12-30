-- Colorscheme from github.com/folke/tokyonight.nvim
-- local colorscheme = "tokyonight-night"
-- local colorscheme = "tokyonight-storm"
-- local colorscheme = "tokyonight-day"
-- local colorscheme = "tokyonight-moon"

local colorscheme = "tokyonight-night"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
