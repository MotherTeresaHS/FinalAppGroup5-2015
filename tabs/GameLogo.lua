-- GameLogo

-- FinalAppGroup5-2015

-- Created by: Justin Bronson
-- Created on: Nov 2015
-- Created for: ICS20
-- This scene shows the game logo for 1 second then goes to the main scene

GameLogo = class()

--global to this file
local startTime

function GameLogo:init(x)
    
    startTime = ElapsedTime
end

function GameLogo:draw()
    -- Codea does not automatically call this method
    
    background(0, 0, 0, 255)
    sprite("Dropbox:GameLogo", 512, 384, 1024, 768)
    
    
    print(ElapsedTime)
    print("End time is " .. startTime + 1)
    if(startTime + 2 < ElapsedTime) then
        Scene.Change("MScene")
        print("The end time is " .. ElapsedTime)
    end
end

function GameLogo:touched(touch)
    -- Codea does not automatically call this method
    
end
