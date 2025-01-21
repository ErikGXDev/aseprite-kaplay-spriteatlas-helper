# KAPLAY Aseprite SpriteAtlas Helper

> I didn't want to spend 2 minutes guessing and writing out the spriteatlas coordinates of all my sprites, so I spent 2 hours making an aseprite extension that semi-automates it

## How to use

1. Install the extension

   - Either download the `kaplayhelper.aseprite-extension` file from the repo or bundle `kaplay-helper.lua` and `package.json` into a `.zip` or `.aseprite-extension` file
   - In Asesprite: "Edit" > "Preferences" > "Extensions" > Press "Add extension" and select the extension to install it

2. Set a keyboard shortcut

   - Go to "Edit" > "Keyboard Shortcuts" and search for "Get KAPLAY Spriteatlas Data"
   - Set a keyboard shortcut for that command

3. Use the plugin
   - Select a region and press your shortcut to copy the spriteatlas data to your clipboard. The data looks like this: `sprite: { x: ..., y: ..., width: ..., height: ...}`
   - Paste this data into your `loadSpriteAtlas()` options like this:
   ```js
    loadSpriteAtlas("sprites/...", {
      <your sprite data here>
    })
   ```

## Cross-platform compatibility

The extension uses commands to copy the data to your clipboard.
It should work out of the box on Windows and MacOS.
On linux, the extension uses the `xclip` command, so make sure you have it installed. (Alternatively you can change the command in `kaplay-helper.lua` locally if you have another clipboard manager installed)
