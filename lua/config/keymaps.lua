-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Quick run current file
vim.keymap.set("n", "<leader>r", function()
  local ft = vim.bo.filetype
  local file = vim.fn.expand("%:p")
  local cmd
  if ft == "lua" then
    cmd = "luajit " .. file
  elseif ft == "sh" or ft == "bash" then
    cmd = "bash " .. file
  elseif ft == "python" then
    cmd = "python3 " .. file
  elseif ft == "javascript" or ft == "typescript" then
    cmd = "node " .. file
  else
    vim.notify("No runner for filetype: " .. ft, vim.log.levels.WARN)
    return
  end
  Snacks.terminal(cmd)
end, { desc = "Run file" })

-- jj to escape insert mode
vim.keymap.set("i", "jj", "<Esc>")

-- Disable arrow keys
vim.keymap.set("n", "<Up>", "<nop>")
vim.keymap.set("n", "<Down>", "<nop>")
vim.keymap.set("n", "<Left>", "<nop>")
vim.keymap.set("n", "<Right>", "<nop>")
vim.keymap.set("i", "<Up>", "<nop>")
vim.keymap.set("i", "<Down>", "<nop>")
vim.keymap.set("i", "<Left>", "<nop>")
vim.keymap.set("i", "<Right>", "<nop>")
