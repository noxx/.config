require('neorg').setup {
    load = {
        ["core.defaults"] = {},
        ["core.norg.concealer"] = {},
        ["core.norg.dirman"] = {
            config = {
                workspaces = {
                    work = "~/notes/work",
                    home = "~/notes/home",
                    gtd = "~/notes/gtd"
                    }
                },
                autochdir = true,
        },
        ["core.norg.journal"] = {},
        ["core.norg.manoeuvre"] = {},
        ["core.gtd.base"] = {
            config = {
                workspace = "gtd"
            }
        },
        ["core.norg.qol.toc"] = {},
        ["core.norg.completion"] = {
            config = {
                engine = "nvim-cmp"
            }
        },
        ["core.gtd.helpers"] = {},
        ["core.gtd.queries"] = {},
        ["core.gtd.ui"] = {}

    }
}
