-- Settings
-- FinalAppGroup5-2015

-- Created by: Justin Bronson
-- Created on: Nov 2015
-- Created for: ICS20
-- This program is where you can change your settings to your preference

Settings = class()

function Settings:init(x)
    -- you can accept and set parameters here
    local moveCredits
end

function Settings:draw()
    -- Codea does not automatically call this method
    background(0, 222, 255, 255)
    
    --sprite("Dropbox:Red Info Button")
    moveCredits = Button("Dropbox:Red Info Button", vec2(WIDTH/2, 100))
    
    moveCredits:draw()
end

function Settings:touched(touch)
    -- Codea does not automatically call this method
    moveCredits:touched(touch)
    
    if(moveCredits.selected == true) then
        Scene.Change("Credits")
    end
end
