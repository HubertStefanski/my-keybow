# my-keybow
My keybow configuration files.

Keybow is small Pi based macropad (like an elgato streamdeck, but for nerds that apparently don't have anything better to do :smile: )

I've got one just like [this](https://shop.pimoroni.com/products/keybow?variant=21246333190227)

# Pre-reqs

 Keybow base files: https://learn.pimoroni.com/article/setting-up-the-keybow-os
 
 # Installation
 
 - Move any `<file_name>.lua` to `layouts/`
 - To enable any of the macro settings from this repository, edit `keys.lua` in the root directory of Keybow-OS
   - Add the following to the bottom of the file: `require "layouts/<file_name>"`
   - Make sure you comment out all other macros to avoid conflicts
   - Your `keys.lua` file should looks something like below
      ```lua
      require "keybow"
      -- require "layouts/default" -- Numberpad

      -- Custom layouts (uncomment to enable) --

      -- require "layouts/boilerplate" -- Handy bits of boilerplate text like Lorem Ipsum
      -- require "layouts/lightroom" -- Handy hotkeys for Adobe Lightroom Classic CC
      -- require "layouts/pico8" -- Controls for Pico-8
      -- require "layouts/mediakeys" -- Basic media controls (play/pause, volume etc)
      -- require "layouts/midi_keys" -- Experimental MIDI layout
      -- require "layouts/blink" -- Numberpad with light feedback
      -- require "layouts/mini" -- Keybow MINI example layout
      -- require "layouts/mini_volume" -- Keybow MINI volume controls
      -- require "layouts/mini_playback" -- Keybow MINI media playback controls
      require "layouts/<file_name>"

      ```
  
