function init(plugin)

  plugin:newCommand{
    id="KaplayGetSpriteData",
    title="Get KAPLAY Spriteatlas Data",
    group="file_menu",
    onclick=function()
      local sprite = app.activeSprite

      if sprite.selection.isEmpty then
        app.alert("Please select a region to export")
        return
      end

      local rectangle = sprite.selection.bounds

      local exportString = "sprite: { x: " .. rectangle.x .. ", y: " .. rectangle.y .. ", width: " .. rectangle.width .. ", height: " .. rectangle.height .. " }"

      
      local copyCommmand = "clip"

      if app.os.macos then
        copyCommmand = "pbcopy"
      elseif app.os.linux then
        -- change this command if you have a different clipboard manager
        -- or install xclip
        copyCommmand = "xclip"
      end
      
      os.execute("echo " .. exportString .. " | " .. copyCommmand)
      
      app.alert("Sprite data copied to clipboard, put it inside your loadSpriteAtlas() options")
    
    end
  }
end
