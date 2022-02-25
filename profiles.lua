require "keybow"
require "profiles/example_profile"

profiles = {}

-- Key mappings --

local color_metatable = {}
color_metatable.__index = color_metatable

function profiles.new_color(r,g,b)
    local obj = {
                r = r,
                g = g,
                b = b
    }
    return setmetatable(obj, color_metatable)
end


local keymap_metatable = {}
keymap_metatable.__index = keymap_metatable

function profiles.new_keymap(one,two,three,four,five,six,seven,eight,nine,ten,eleven)
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


local profile_metatable = {}
profile_metatable.__index = profile_metatable

function profiles.new_profile(color,keymap)
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

-- Global Colors
profiles.Blue = profiles.new_color(0, 0, 255)
profiles.Green = profiles.new_color(0, 255, 0)
profiles.Red = profiles.new_color(255, 0, 0)
profiles.Yellow = profiles.new_color(255, 255, 0)
profiles.White = profiles.new_color(255, 255, 255)

local current_profile = 1

local profile_collection = {}


local function set_profile(selected_profile)
    -- 0 -> 11 for each key index on the 12-key keybow
    for i = 0, 11, 1 do
        keybow.set_pixel(i, selected_profile.color.r, selected_profile.color.g, selected_profile.color.b)
    end
end

local function load_profiles()
    table.insert(profile_collection,example_profile.example_profile)
end

function setup()
    keybow.auto_lights(false)
    keybow.clear_lights()
    load_profiles()
    if #profile_collection <=0 then
        keybow.load_pattern("heartbeat.png")
        return
    end
    set_profile(profile_collection[current_profile])
end

-- Treat 00 as the profile switch key
function handle_key_00(pressed)
    if pressed then
        if current_profile > #profile_collection then
            current_profile = 0
        end
        current_profile = current_profile + 1
        set_profile(profile_collection[current_profile])
    end
end

function handle_key_01(pressed)
    if pressed then
        profile_collection[current_profile].keymap.one()
    end
end

function handle_key_02(pressed)
    if pressed then
        profile_collection[current_profile].keymap.two()
    end
end

function handle_key_03(pressed)
    if pressed then
        profile_collection[current_profile].keymap.three()
    end
end

function handle_key_04(pressed)
    if pressed then
        profile_collection[current_profile].keymap.four()
    end
end

function handle_key_05(pressed)
    if pressed then
        profile_collection[current_profile].keymap.five()
    end
end

function handle_key_06(pressed)
    if pressed then
        profile_collection[current_profile].keymap.six()
    end
end

function handle_key_07(pressed)
    if pressed then
        profile_collection[current_profile].keymap.seven()
    end
end

function handle_key_08(pressed)
    if pressed then
        profile_collection[current_profile].keymap.eight()
    end
end

function handle_key_09(pressed)
    if pressed then
        profile_collection[current_profile].keymap.nine()
    end
end

function handle_key_10(pressed)
    if pressed then
        profile_collection[current_profile].keymap.ten()
    end
end

function handle_key_11(pressed)
    if pressed then
        profile_collection[current_profile].keymap.eleven()
    end
end
