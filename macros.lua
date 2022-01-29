require "keybow"

-- Key mappings --

local meta = {}

function setup()
    keybow.auto_lights(false)
    keybow.clear_lights()
end

function NewColor(r, g, b)
    local view = {
        r = r,
        g = g,
        b = b
    }
    setmetatable(view, meta)
    return view
end

local blue = NewColor(125, 250, 98)
local green = NewColor {55, 219, 108}
local red = NewColor {217, 59, 85}
local yellow = NewColor {250, 205, 65}

local colorCollection = {blue, green, red, yellow}

local colorIndex = 0

local function setColor(color)
    -- 0 -> 11 for each key index on the 12-key keybow
    for i = 0, 11, 1 do
        keybow.set_pixel(i, color.r, color.g, color.b)
    end
end

function handle_key_00(pressed)
    keybow.set_key("0", pressed)
    if pressed then
        if colorIndex > #colorCollection then
            colorIndex = 0
        end
        setColor(colorCollection[colorIndex])
    end
end

function handle_key_01(pressed)
    keybow.set_key("", pressed)
end

function handle_key_02(pressed)
    keybow.set_key("", pressed)
end

function handle_key_03(pressed)
    keybow.set_key("", pressed)
end

function handle_key_04(pressed)
    keybow.set_key("", pressed)
end

function handle_key_05(pressed)
    keybow.set_key("", pressed)
end

function handle_key_06(pressed)
    keybow.set_key("", pressed)
end

function handle_key_07(pressed)
    keybow.set_key("", pressed)
end

function handle_key_08(pressed)
    keybow.set_key("", pressed)
end

function handle_key_09(pressed)
    keybow.set_key("", pressed)
end

function handle_key_10(pressed)
    keybow.set_key("", pressed)
end

function handle_key_11(pressed)
    keybow.set_key("", pressed)
end
