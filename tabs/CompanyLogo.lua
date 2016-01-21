-- CompanyLogo
-- FinalAppGroup5-2015

-- Created by: Justin Bronson
-- Created on: Nov 2015
-- Created for: ICS20
-- This scene shows the company logo for 1 second then changes to the game logo
CompanyLogo = class()

local startTimeTwo

function CompanyLogo:init(x)
    -- you can accept and set parameters here
    
    startTimeTwo = ElapsedTime
end

function CompanyLogo:draw()
    -- Codea does not automatically call this method
    
    background(0, 0, 0, 255)
    sprite("Dropbox:CompanyLogo", 512, 384, 1024, 768)
    
    print(ElapsedTime)
    print("End time is " .. startTimeTwo + 1)
    if(startTimeTwo + 2 < ElapsedTime) then
        Scene.Change("GLogo")
        print("The end time is " .. ElapsedTime)
        
    end        
end
