-- Settings
-- FinalAppGroup5-2015

-- Created by: Justin Bronson
-- Created on: Dec 2015
-- Created for: ICS20
-- This scene is where you can change your settings to your preference

Settings = class()

--global to this fill
    local moveCredits
    local moveBackMGame
    local resetButton
    local musicOn
    local musicOff

function Settings:init(x)
    -- you can accept and set parameters here
    
    --sprite("Dropbox:Red Info Button")
    --sprite("Dropbox:Teal Back Circle Button")
    --sprite("Dropbox:Green Redo Button")
    --sprite("Dropbox:Star Gold")
    --sprite("Dropbox:Star Black")
    moveCredits = Button("Dropbox:Red Info Button", vec2(WIDTH/2, 100))
    moveBackMGame = Button("Dropbox:Teal Back Circle Button", vec2(100, 100))
    resetButton = Button("Dropbox:Green Redo Button", vec2(WIDTH/2, 250))
    musicOn = Button("Dropbox:onButton", vec2(WIDTH/2, 550))
    musicOff = Button("Dropbox:offButton", vec2(WIDTH/2, 400))
end

function Settings:draw()
    -- Codea does not automatically call this method
    background(255, 159, 0, 255)
    
    font("Copperplate-Bold")
    fontSize(20)
    fill(0, 0, 0, 255)
    
    text("Credits", 512, 175)
    text("Reset Stats", 512, 325)
    text("Music Off", 512, 475)
    text("Music On", 512, 625)
    
    moveCredits:draw()
    moveBackMGame:draw()
    resetButton:draw()
    musicOn:draw()
    musicOff:draw()
end

function Settings:touched(touch)
    -- Codea does not automatically call this method
    moveCredits:touched(touch)
    
    if(moveCredits.selected == true) then
        Scene.Change("Credits")
    end
    moveBackMGame:touched(touch)
    
    if(moveBackMGame.selected == true) then
        Scene.Change("MScene")
    end
    resetButton:touched(touch)
    
    if(resetButton.selected == true) then
        stars = nil
        totalStars = nil
        highscore = nil
    end
    musicOff:touched(touch)
    
    if(musicOff.selected == true) then
        music.stop()
    end
    musicOn:touched(touch)
    
    if(musicOn.selected == true) then
        music("A Hero's Quest:Battle", true, 0.75)
    end
end

