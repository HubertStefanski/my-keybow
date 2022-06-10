color = {}

local color_metatable = {}
color_metatable.__index = color_metatable

function color.new(r, g, b)
    local obj = {
        r = r,
        g = g,
        b = b
    }
    return setmetatable(obj, color_metatable)
end

-- Global Colors
color.Blue = color.new(0, 0, 255)
color.Green = color.new(0, 255, 0)
color.Red = color.new(255, 0, 0)
color.Yellow = color.newr(255, 255, 0)
color.White = color.new(255, 255, 255)

return color
