-- TutCorrect
-- FinalAppGroup5-2015
-- Created by: Josh beaulac 
-- Created on: Dec 2015
-- Created for: ICS20 
-- This program is where you can get extra hints

TutCorrect = class()

    local moveBackMain

function TutCorrect:init(x)
    -- you can accept and set parameters here
    
    --sprite("Dropbox:Blue Level Menu Button")
    moveBackMain = Button("Dropbox:Blue Level Menu Button", vec2(WIDTH/2, HEIGHT/2))
    
end

function TutCorrect:draw()
    -- Codea does not automatically call this method
    background(255, 16, 0, 255)
    
    font("AmericanTypewriter-Bold")
    fontSize(48)
    fill(0, 0, 0, 255)
    text("Congratulations", 512, HEIGHT/2 + 175)
    
    font("AmericanTypewriter-Bold")
    fontSize(30)
    fill(0, 0, 0, 255)
    text("Click the button below to continue playing!", 512, HEIGHT/2 + 75)
    
    moveBackMain:draw()
end

function TutCorrect:touched(touch)
    -- Codea does not automatically call this method
    moveBackMain:touched(touch)
    
    if(moveBackMain.selected == true) then
        Scene.Change("MScene")
    end
end