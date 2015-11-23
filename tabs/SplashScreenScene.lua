-- SplashScreenScene
-- Lesson6

-- Created by: Justin Bronson
-- Created on: Nov 2015
-- Created for: ICS20
-- 

SplashScreenScene = class()

--global to this file
local moveForwardButton

function SplashScreenScene:init(x)

    --sprite("Dropbox:CompanyLogo")
    moveForwardButton = Button("Cargo Bot:Command Right", vec2(WIDTH/2, HEIGHT/2))
end

function SplashScreenScene:draw()
    -- Codea does not automatically call this method
    
    background(255, 6, 0, 255)
    moveForwardButton:draw()
end

function SplashScreenScene:touched(touch)
    -- Codea does not automatically call this method
    
    moveForwardButton:touched(touch)
    
    if(moveForwardButton.selected == true) then
        Scene.Change("MScene")
    end
end
