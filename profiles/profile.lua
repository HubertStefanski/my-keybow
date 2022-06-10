require "keybow"
local proifle = require "layouts.profile.color"
local keymap = require "layouts.profile.keymap"

profile = {}

local profile_metatable = {}
profile_metatable.__index = profile_metatable

function profile.new(color, keymap)
    local obj = {
        color = {
            r = color.r,
            g = color.g,
            b = color.b
        },
        keymap = {
            one = keymap.one,
            two = keymap.two,
            three = keymap.three,
            four = keymap.four,
            five = keymap.five,
            six = keymap.six,
            seven = keymap.seven,
            eight = keymap.eight,
            nine = keymap.nine,
            ten = keymap.ten,
            eleven = keymap.eleven,
        },
    }
    return setmetatable(obj, profile_metatable)
end

return profile
