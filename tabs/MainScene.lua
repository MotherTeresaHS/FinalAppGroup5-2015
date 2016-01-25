-- MainScene
-- FinalAppGroup5-2015

-- Created by: Justin Bronson
-- Created on: Nov 2015
-- Created for: ICS20
-- This scene displays multiple buttons to change to different scenes

MainScene = class()

--global to this fill
local moveMainGame
local moveStore
local tutorial
local moveSettings
local leaderboardButton

function MainScene:init(x)
    --sprite("Dropbox:PlayButton")
    --sprite("Dropbox:ShoppingCart@-2k")
    --sprite("Dropbox:Purple Info Button")
    --sprite("Dropbox:Teal Settings Button")
    sprite("Dropbox:cart")
    moveMainGame = Button("Dropbox:startButton", vec2(WIDTH/2, HEIGHT/2))
    moveStore = Button("Dropbox:cart", vec2(924, 668))
    tutorial = Button("Dropbox:Purple Info Button", vec2(924, 100))
    moveSettings = Button("Dropbox:Teal Settings Button", vec2(100, 668))
    leaderboardButton = Button("Dropbox:leaderboardsButton", vec2(WIDTH/2-300, HEIGHT/2-300))
    --sprite("Dropbox:achievementsButton")
end

function MainScene:draw()
    -- Codea does not automatically call this method
    background(255, 0, 94, 255)
    moveMainGame:draw()
    moveStore:draw()
    tutorial:draw()
    moveSettings:draw()
    leaderboardButton:draw()
    
    font("AmericanTypewriter-Bold")
    fontSize(25)
    fill(0, 0, 0, 255)
    text("Tutorial", 924, 168)
    
    sprite("Dropbox:MainMenu", 512, 200)

end

function MainScene:touched(touch)
    -- Codea does not automatically call this method
    print("touched")
    moveMainGame:touched(touch)
    
    if(moveMainGame.selected == true) then
        Scene.Change("WSelect")
    end
    moveStore:touched(touch)
    
    if(moveStore.selected == true) then
        Scene.Change("Store")
    end
    tutorial:touched(touch)
    
    if(tutorial.selected == true) then
        Scene.Change("Tut")
    end
    moveSettings:touched(touch)
    
    if(moveSettings.selected == true) then
        Scene.Change("Setting")
    end
    
    leaderboardButton:touched(touch)
    
    if (leaderboardButton.selected == true)then
        if(gamecenter.enabled() == true)then
            gamecenter.showLeaderboards()
        end
    end
end
