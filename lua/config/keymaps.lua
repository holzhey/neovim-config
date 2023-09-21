-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local crates = require("crates")
local wk = require("which-key")

-- wk.register({
--  ["<leader>f"] = { name = "+file" },
--  ["<leader>ff"] = { "<cmd>Telescope find_files<cr>", "Find File" },
--  ["<leader>fr"] = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
--  ["<leader>fn"] = { "<cmd>enew<cr>", "New File" },
--})

wk.register({
  ["<leader>cc"] = {
    name = "Crates",
    f = { crates.show_features_popup, "Show Features Popup" },
    u = { crates.upgrade_crate, "Update Crate" },
    U = { crates.upgrade_all_crates, "Update All Crates" },
    H = { crates.open_homepage, "Open Homepage" },
    R = { crates.open_repository, "Open Repository" },
    D = { crates.open_documentation, "Open Documentation" },
    C = { crates.open_crates_io, "Open Crates.io" },
    p = { crates.show_popup, "Show Popup" },
    r = { crates.show_crate_popup, "Show Crate" },
    v = { crates.show_versions_popup, "Show Versions" },
    d = { crates.show_dependencies_popup, "Show Dependencies" },
  },
})
