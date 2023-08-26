return {
  -- Actions preview
  {
    "aznhe21/actions-preview.nvim",
    opts = function()
      vim.keymap.set({ "v", "n" }, "gf", require("actions-preview").code_actions)
    end,
  },
}
