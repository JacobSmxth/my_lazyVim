return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "default",
      ["<CR>"] = { "fallback" }, -- Enter just goes to new line, doesn't accept
      ["<Tab>"] = { "accept", "snippet_forward", "fallback" }, -- Tab to accept
    },
  },
}
