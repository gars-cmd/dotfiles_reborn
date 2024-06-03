return {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local chunk = require("hlchunk.mods.chunk")
        local indent = require("hlchunk.mods.indent")
        require("hlchunk").setup({})
        chunk ({
            chars = {
                horizontal_line = "─",
                vertical_line = "│",
                left_top = "┌",
                left_bottom = "└",
                right_arrow = "─",
            },
            style = "#7fb4ca",
        }):enable()
    end
}
