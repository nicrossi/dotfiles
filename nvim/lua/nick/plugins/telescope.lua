return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup({})

        local map = function(keys, func, desc)
            vim.keymap.set('n', keys, func, { desc = "LSP: " .. desc })
        end
        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        vim.keymap.set('n', '<leader>pws', function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>pWs', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
        -- Jump to definitions of the word under the cursor
        map('gd', builtin.lsp_definitions, "[G]oto [D]efinitions")
        -- Find references for the word under the cursor
        map('gr', builtin.lsp_references, "[G]oto [R]eferences")
        -- Jump to the type of the word under the cursos
        map('<leader>D', builtin.lsp_type_definitions, "Type [D]efinition")
    end
}
