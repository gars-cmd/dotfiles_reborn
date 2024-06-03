return
    {
        "robitx/gp.nvim",
        config = function()
            require("gp").setup()
            local config = {
                openai_api_key = os.getenv("OPENAI_API_KEY"),
                agents = {
                    {
                        name = "gpt-4",
                        chat = true,
                        model = { model = "gpt-4"}
                    }
                }
            }

            -- or setup with your own config (see Install > Configuration in Readme)
            -- require("gp").setup(config)

            -- shortcuts might be setup here (see Usage > Shortcuts in Readme)
        end,
    }
