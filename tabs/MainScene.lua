-- MainScene
-- Lesson8

-- Created by: Justin Bronson
-- Created on: Nov 2015
-- Created for: ICS20
-- This program displays multiple screens

MainScene = class()

--global to this fill
local moveBackButton
local moveMainGame
local moveStore

function MainScene:init(x)
    --sprite("Dropbox:Yellow Move Scene Forward Button")
    --sprite("Dropbox:Red Move Scene Forward Button")
    --sprite("Dropbox:Blue Move Scene Forward Button")
    moveBackButton = Button("Cargo Bot:Command Left", vec2(100, 100))
    moveMainGame = Button("Dropbox:Blue Move Scene Forward Button", vec2(362, HEIGHT/2))
    moveStore = Button("Dropbox:Yellow Move Scene Forward Button", vec2(662, HEIGHT/2))
end

function MainScene:draw()
    -- Codea does not automatically call this method
    
    background(0, 183, 255, 255)
    moveBackButton:draw()
    moveMainGame:draw()
    moveStore:draw()
    
    font("AmericanTypewriter-Bold")
    fill(255, 16, 0, 255)
    text("Main Game", 362, 450)
    text("Store", 662, 450)

end

function MainScene:touched(touch)
    -- Codea does not automatically call this method
    moveBackButton:touched(touch)
    
    if(moveBackButton.selected == true) then
        Scene.Change("splash")
    end
    
    moveMainGame:touched(touch)
    
    if(moveMainGame.selected == true) then
        Scene.Change("MGame")
    end
    
    moveStore:touched(touch)
    
    if(moveStore.selected == true) then
        Scene.Change("Store")
    end
end
