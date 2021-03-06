local gears = require("gears")
local awful = require("awful")

local visible = {
    topbar = require("statusbar.bar.top").visible,
    bottombar = require("statusbar.bar.bottom").visible,
}
local M = {}

function M.get()
    local keys = gears.table.join(
        awful.key(
            {modkey},
            "b",
            function()
                visible.topbar()
            end,
            {description = "show statusbar for window title", group = "statusbar"}
        ),
        awful.key(
            {modkey, "Shift"},
            "b",
            function()
                visible.bottombar()
            end,
            {description = "show statusbar for system monitor", group = "statusbar"}
        ),
        awful.key(
            {modkey, "Ctrl"},
            "b",
            function()
                visible.topbar()
                visible.bottombar()
            end,
            {description = "show statusbar for system monitor", group = "statusbar"}
        )
    )
    return keys
end

return setmetatable({}, { __call = function(_, ...) return M.get(...) end })
