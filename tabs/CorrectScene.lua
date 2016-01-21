--correctscene
-- created by: Matthew Walsh
-- created for: ics2o

CorrectScene = class()
-- declare variable
local backButton
-- Use this function to perform your initial setup
function CorrectScene:init()
    supportedOrientations(LANDSCAPE_ANY)
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    backButton = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/2, 200))
    --sprite("Dropbox:Blue Back Circle Button")
end

-- This function gets called once every frame
function CorrectScene:draw()
    background(255, 0, 43, 255)
    
        sprite("Dropbox:Star@-2k", WIDTH/2, HEIGHT/2, 150, 150)
        sprite("Dropbox:Star@-2k", WIDTH/2-200, HEIGHT/2, 150, 150)
        sprite("Dropbox:Star@-2k", WIDTH/2+200, HEIGHT/2, 150, 150)
    font("AmericanTypewriter-Bold")
    fontSize(150)
    fill(0, 22, 255, 255)
    text("You Won", WIDTH/2, 600)
    backButton:draw()
end

function CorrectScene:touched(touch)
    backButton:touched(touch)
    if (backButton.selected == true)then
        Scene.Change("WSelect")
    end
end


