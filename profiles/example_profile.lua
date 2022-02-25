require "keybow"
require "profiles"

-- meta_key = keybow.LEFT_META -- For macOS
meta_key = keybow.LEFT_CTRL -- For Windows/Linux

local hello = function()
    keybow.text("Hello")
end

local world = function()
    keybow.text("World")
end

local exclaim = function()
    keybow.text("!")
end

local previous = function()
    keybow.set_media_key(keybow.MEDIA_PREV, pressed)
end

local play_pause = function()
    keybow.set_media_key(keybow.MEDIA_PLAYPAUSE, pressed)
    
end
local next = function()
    keybow.set_media_key(keybow.MEDIA_NEXT, pressed)
end

local calculator = function()
    keybow.tap_key(meta_key)
    keybow.text(calculator)
    keybow.tap_key(keybow.ENTER)
    
end

local example_key_map = profiles.new_keymap(hello,
    world,
    exclaim,
    calculator,
    calculator,
    calculator,
    calculator,
    calculator,
    previous,
    play_pause,
    next)

 example_profile = profiles.new_profile(profiles.red,example_key_map)

