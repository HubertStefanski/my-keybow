require "keybow"
local keymap = require "layouts.profiles.keymap"
local color = require "layouts.profiles.color"
local user_profiles = require "layouts.profiles.user_profiles"
local profile = require "layouts.profiles.profile"




local current_profile_index = 0
local profile_collection = user_profiles.profile_collection

local function set_color_for_profile(active_profile)
    for i = 0, 11, 1 do
        keybow.set_pixel(i, active_profile.color.r, active_profile.color.g, active_profile.color.b)
    end
end

function setup()
    keybow.auto_lights(false)
    keybow.clear_lights()
    if #profile_collection == 0 then
        -- keybow.load_pattern("heartbeat.png")
        return
    end
    set_color_for_profile(user_profiles.profile_collection[current_profile_index])
end

-- Treat 00 as the profile switch key
function handle_key_00(pressed)
    if pressed then
        if current_profile_index > #profile_collection then
            current_profile_index = 0
        end
        current_profile_index = current_profile_index + 1
        set_color_for_profile(user_profiles.profile_collection[current_profile_index])
    end
end

function handle_key_01(pressed)
    if pressed then
        profile_collection[current_profile_index].keymap.one()
    end
end

function handle_key_02(pressed)
    if pressed then
        profile_collection[current_profile_index].keymap.two()
    end
end

function handle_key_03(pressed)
    if pressed then
        profile_collection[current_profile_index].keymap.three()
    end
end

function handle_key_04(pressed)
    if pressed then
        profile_collection[current_profile_index].keymap.four()
    end
end

function handle_key_05(pressed)
    if pressed then
        profile_collection[current_profile_index].keymap.five()
    end
end

function handle_key_06(pressed)
    if pressed then
        profile_collection[current_profile_index].keymap.six()
    end
end

function handle_key_07(pressed)
    if pressed then
        profile_collection[current_profile_index].keymap.seven()
    end
end

function handle_key_08(pressed)
    if pressed then
        profile_collection[current_profile_index].keymap.eight()
    end
end

function handle_key_09(pressed)
    if pressed then
        profile_collection[current_profile_index].keymap.nine()
    end
end

function handle_key_10(pressed)
    if pressed then
        profile_collection[current_profile_index].keymap.ten()
    end
end

function handle_key_11(pressed)
    if pressed then
        profile_collection[current_profile_index].keymap.eleven()
    end
end
