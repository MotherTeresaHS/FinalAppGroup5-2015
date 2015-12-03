-- MainGame
-- FinalAppGroup5-2015

-- Created by: Justin Bronson
-- Created on: Nov 2015
-- Created for: ICS20
-- This program is the start of the game(MainGame)

MainGame = class()

function MainGame:init(x)
    -- you can accept and set parameters here
    local moveWorldSelect
    local moveMainScene
    local moveSettings
end

function MainGame:draw()
    -- Codea does not automatically call this method
    
    --sprite("Dropbox:Red Level Menu Button")
    --sprite("Dropbox:Red Back Circle Button")
    --sprite("Dropbox:Red Settings Button")
    moveWorldSelect = Button("Dropbox:Red Level Menu Button", vec2(924, 100))
    moveMainScene = Button("Dropbox:Red Back Circle Button", vec2(100, 100))
    moveSettings = Button("Dropbox:Red Settings Button", vec2(924, 668))
    
    moveWorldSelect:draw()
    moveMainScene:draw()
    moveSettings:draw()
end

function MainGame:touched(touch)
    -- Codea does not automatically call this method
    moveMainScene:touched(touch)
    
    if(moveMainScene.selected == true) then
        Scene.Change("MScene")
    end
    
    moveWorldSelect:touched(touch)
    
    if(moveWorldSelect.selected == true) then
        Scene.Change("WSelect")      
    end
    
    moveSettings:touched(touch)
    
    if(moveSettings.selected == true) then
        Scene.Change("Setting")
    end
end
