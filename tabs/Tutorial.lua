-- Tutorial
-- FinalAppGroup5-2015
-- Created by: Justin Bronson
-- Created on: Jan 2015
-- Created for: ICS20 
-- This program is where you can learn how to play

Tutorial = class()
    local shapeOne
    local shapeTwo
    local shapeThree
    local shapeFour
    local shapeMissing
    local shapeSix
    local optionOne
    local optionTwo
    local optionThree

function Tutorial:init(x)
    -- you can accept and set parameters here
    
    --sprite("Dropbox:circleRed")
    --sprite("Cargo Bot:Condition None")
    --sprite("Dropbox:diamondOrange")
    --sprite("Dropbox:circleYellow")
    shapeOne = Button("Dropbox:diamondOrange", vec2(146, 150))
    shapeTwo = Button("Dropbox:circleRed", vec2(292, 150))
    shapeThree = Button("Dropbox:diamondOrange", vec2(438, 150))
    shapeFour = Button("Dropbox:diamondOrange", vec2(584, 150))
    shapeMissing = SpriteObject("Dropbox:BlackLine", vec2(730, 100))
    shapeSix = Button("Dropbox:diamondOrange", vec2(876, 150))
    optionOne = SpriteObject("Dropbox:circleYellow", vec2(256, 300))
    optionTwo = SpriteObject("Dropbox:diamondBlue", vec2(512, 300))
    optionThree = SpriteObject("Dropbox:circleRed", vec2(768, 300))
    shapeMissing.draggable = false
    
end

function Tutorial:draw()
    -- Codea does not automatically call this method
    background(0, 255, 206, 255)
    
    font("AmericanTypewriter-Bold")
    fontSize(30)
    fill(0, 0, 0, 255)
    text("Take the missing piece of the pattern", 512, 600)
    text("then place it on the missing place", 512, 575)
    
    shapeOne:draw()
    shapeTwo:draw()
    shapeThree:draw()
    shapeFour:draw()
    shapeMissing:draw()
    shapeSix:draw()
    optionOne:draw()
    optionTwo:draw()
    optionThree:draw()
    sprite("Dropbox:BlackLine", 730, 100, 100)
end

function Tutorial:touched(touch)
    
    -- Codea does not automatically call this method
    optionOne:touched(touch)
    optionTwo:touched(touch)
    optionThree:touched(touch)
    
    if(optionThree:isTouching(shapeMissing) == true) then
        Scene.Change("TutC")   
    end   
end
