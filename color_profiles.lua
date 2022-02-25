require "keybow"

-- Key mappings --

local color_metatable = {}
color_metatable.__index = color_metatable

local function NewColor(r, g, b)
    local obj = {
        r = r,
        g = g,
        b = b
    }
    return setmetatable(obj, color_metatable)
end

-- Declare your new colors here, and add them to the colorCollection to use them
-- in the color cycles
local blue = NewColor(0, 0, 255)
local green = NewColor(0, 255, 0)
local red = NewColor(255, 0, 0)
local yellow = NewColor(255, 255, 0)
local white = NewColor(255, 255, 255)

local colorCollection = {blue, green, red, yellow, white}

local colorIndex = 0


local function setColor(color)
    -- 0 -> 11 for each key index on the 12-key keybow
    for i = 0, 11, 1 do
        keybow.set_pixel(i, color.r, color.g, color.b)
    end
end

function setup()
    keybow.auto_lights(false)
    keybow.clear_lights()
    setColor(white)
end

-- Treat 00 as the profile switch key
function handle_key_00(pressed)
    if pressed then
        keybow.tap_key("0")
        colorIndex = colorIndex + 1
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
