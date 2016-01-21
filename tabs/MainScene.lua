-- MainScene
-- FinalAppGroup5-2015

-- Created by: Justin Bronson
-- Created on: Nov 2015
-- Created for: ICS20
-- This scene displays multiple buttons to change to different scenes

MainScene = class()

--global to this fill
local moveMainGame
local moveStore
local tutorial
local moveSettings

function MainScene:init(x)
    --sprite("Dropbox:PlayButton")
    --sprite("Dropbox:ShoppingCart@-2k")
    --sprite("Dropbox:Purple Info Button")
    --sprite("Dropbox:Teal Settings Button")
    moveMainGame = Button("Dropbox:PlayButton", vec2(WIDTH/2, HEIGHT/2))
    moveStore = Button("Dropbox:ShoppingCart@-2k", vec2(924, 668))
    tutorial = Button("Dropbox:Purple Info Button", vec2(924, 100))
    moveSettings = Button("Dropbox:Teal Settings Button", vec2(100, 668))
end

function MainScene:draw()
    -- Codea does not automatically call this method
    background(255, 0, 94, 255)
    moveMainGame:draw()
    moveStore:draw()
    tutorial:draw()
    moveSettings:draw()
    
    font("AmericanTypewriter-Bold")
    fontSize(25)
    fill(0, 0, 0, 255)
    text("Tutorial", 924, 168)
    
    sprite("Dropbox:MainMenu", 512, 200)

end

function MainScene:touched(touch)
    -- Codea does not automatically call this method
    print("touched")
    moveMainGame:touched(touch)
    
    if(moveMainGame.selected == true) then
        Scene.Change("WSelect")
    end
    moveStore:touched(touch)
    
    if(moveStore.selected == true) then
        Scene.Change("Store")
    end
    tutorial:touched(touch)
    
    if(tutorial.selected == true) then
        Scene.Change("Tut")
    end
    moveSettings:touched(touch)
    
    if(moveSettings.selected == true) then
        Scene.Change("Setting")
    end
end
