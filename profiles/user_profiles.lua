require "keybow"
local color = require "layouts.profiles.color"
local keymap = require "layouts.profiles.keymap"
local profile = require "layouts.profiles.profile"

user_profiles = {}

local jeden = function()
    keybow.text("one")
end

local dwa = function()
    keybow.text("two")
end

local trzy = function()
    keybow.text("three")
end

local cztery = function()
    keybow.text("four")
end

local piec = function()
    keybow.text("five")
end

local szesc = function()
    keybow.text("six")
end

local siedem = function()
    keybow.text("seven")
end

local osiem = function()
    keybow.text("eight")
end

local dziewiec = function()
    keybow.text("nine")
end

local dziesiec = function()
    keybow.text("ten")
end

local jedenascie = function()
    keybow.text("eleven")
end

local example_key_map = keymap.new(
    jeden,
    dwa,
    trzy,
    cztery,
    piec,
    szesc,
    siedem,
    osiem,
    dziewiec,
    dziesiec,
    jedenascie
)


test_profile     = profile.new(color.Red, example_key_map)
test_profile_two = profile.new(color.Green, example_key_map)

user_profiles.profile_collection = { test_profile, test_profile_two }

return user_profiles
