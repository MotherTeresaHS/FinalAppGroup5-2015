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

print("Artwork")

function MainScene:init(x)
    --sprite("Dropbox:Yellow Move Scene Forward Button")
    --sprite("Dropbox:Red Move Scene Forward Button")
    --sprite("Dropbox:Blue Move Scene Forward Button")
    moveBackButton = Button("Cargo Bot:Command Left", vec2(100, 100))
    moveMainGame = Button("Dropbox:Blue Move Scene Forward Button", vec2(175, HEIGHT/2))
    moveStore = Button("Dropbox:Yellow Move Scene Forward Button", vec2(853, HEIGHT/2))
end

function MainScene:draw()
    -- Codea does not automatically call this method
    
    background(0, 177, 255, 255)
    moveBackButton:draw()
    moveMainGame:draw()
    moveStore:draw()

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
