require "keybow"

keymap = {}

local keymap_metatable = {}
keymap_metatable.__index = keymap_metatable

function keymap.new(one, two, three, four, five, six, seven, eight, nine, ten, eleven)
    local obj = {
        one = one,
        two = two,
        three = three,
        four = four,
        five = five,
        six = six,
        seven = seven,
        eight = eight,
        nine = nine,
        ten = ten,
        eleven = eleven
    }
    return setmetatable(obj, keymap_metatable)
end

return keymap
