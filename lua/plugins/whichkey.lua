local wk = require("which-key")

wk.add({

    -- Find
    { "<leader>f",  group = "Find", icon={icon=" ", color="green"} },
    { "<leader>ff", desc = "Find File", icon={ icon="󰈞 ", color="green" }, mode = "n" },
    { "<leader>fg", desc = "Find Text", icon={ icon="󱎸 ", color="yellow" }, mode = "n" },
    { "<leader>ft", desc = "Find Todo", icon={ icon=" ", color="azure" }, mode = "n" },
    { "<leader>fT", desc = "Find Todo/Fix/Fixme", icon={ icon=" ", color="purple" },  mode = "n" },
    
    -- Git
    { "<leader>g",  group = "Git", icon={ icon="󰊢 ", color="orange" } },
    { "<leader>gb", desc = "Open Branches", icon=" ", mode = "n" },
    { "<leader>gc", desc = "Open Commits", icon="󰜘 ", mode = "n" },
    { "<leader>gl", desc = "Open Log line", icon=" ", mode = "n" },
    { "<leader>gs", desc = "Open Status", icon="󰷋 ", mode = "n" },
    { "<leader>gS", desc = "Open Stash", icon="󱪢 ", mode = "n" },
    { "<leader>gd", desc = "Open Diffs", icon=" ", mode = "n" },
    { "<leader>gf", desc = "Open Log file", icon="󰧮 ", mode = "n" },
    { "<leader>gp", desc = "Preview Hunk", icon="󱖫 ", mode = "n" },
    { "<leader>gt", desc = "Preview Signs", icon="󱦹 ", mode = "n" },

    -- LSP
    { "<leader>l", group=" LSP", icon={ icon=" ", color="gray" } },
    { "<leader>lD", desc = "Go to declaration", icon={ icon="󰘎 ", color="orange" } },
    { "<leader>ld", desc = "Go to definition" , icon={ icon="󰦨 ", color="gray" } },
    { "<leader>lk", desc = "Display hover", icon={ icon="󰆉 ", color="green" } },
    { "<leader>li", desc = "Go to implementation", icon={ icon="󰪸 ", color="yellow" } },
    { "<leader>lr", desc = "Dispay references", icon={ icon=" ", color="blue"} },
    { "<leader>lf", desc = "Auto-formatting", icon={ icon="󰢚 ", color="purple" } },
    -- Workspace
    { "<leader>lw", group="Workspace", icon={ icon="󰉋 ", color="azure" } },
    { "<leader>lwa", desc = "Add folder", icon={ icon=" ", color="green" } },
    { "<leader>lwr", desc = "Remove folder", icon={ icon=" ", color="red" } },
    { "<leader>lwl", desc = "List", icon={ icon=" ", color="azure" } },

    -- NvimTree
    { "<leader>t", group="Tree", icon={ icon=" ", color="blue" } },
    { "<leader>tt", "<cmd>NvimTreeToggle<cr>", desc = "Tree Toggle" },
    { "<leader>tf", "<cmd>NvimTreeFocus<cr>", desc = "Tree Focus", icon=" " },

    -- Terminal
    { "<leader>c", group="Terminal", icon={ icon=" ",  color="grey" }, mode="n" },
    { "<leader>ct", "<cmd>ToggleTerm<cr>", desc = "Open Terminal", icon={ icon=" ", color="green"} },
    { "<leader>cf", desc="Open Float Terminal", icon={ icon=" ", color="orange" } },

    -- Diagnostic
    { "<leader>e",  "<cmd>lua vim.diagnostic.open_float()<cr>", desc = "Open Diagnostic Window", icon={ icon=" ", color="red" }, mode="n" },

    -- UV
    { "<leader>u", group="UV", icon={ icon="󰰧 ", color="purple" } } ,
    { "<leader>ua", desc="Add Package", icon={ icon=" ", color="green" } },
    { "<leader>uc", desc="Sync Packages", icon={ icon="󰴋 ", color="azure" } },
    { "<leader>ud", desc="Remove Package", icon={ icon=" ", color="red" } },
    { "<leader>uf", desc="Run Function", icon={ icon="󰐑 ", color="orange" } },
    { "<leader>ur", desc="Run Current File", icon={ icon="󱜧 ", color="orange" } },
    { "<leader>up", desc="Run Program", icon={ icon="󱧺 ", color="orange" } },
    { "<leader>ui", desc="Init", icon={ icon="󰑐 ", color="blue" } },
    { "<leader>ue", desc="Environment", icon={ icon=" ", color="azure" } }, 
    -- Ruff
    { "<leader>r",  desc = "Ruff", icon={ icon="󰰞 ", color="green" }, mode="n" },

    -- Color Schemes
    { "<leader>s", desc="Colorschemes", icon={ icon=" ", color="azure" }, mode="n"},
})
