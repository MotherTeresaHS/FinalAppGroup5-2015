-- Stormy
-- FinalAppGroup5-2015

-- Created by: Justin Bronson
-- Created on: Nov 2015
-- Created for: ICS20
-- This scene is where you can select witch level you want to play on Stormy

Stormy = class()

--global to this fill
    local moveBackSelect
    local levelOne
    local levelTwo
    local levelThree
    local levelFour
    local levelFive

function Stormy:init(x)
    -- you can accept and set parameters here
    
    --sprite("Dropbox:Teal Back Circle Button")
    --sprite("Dropbox:number1Teal")
    moveBackSelect = Button("Dropbox:Blue Back Circle Button", vec2(100, 100))
    levelOne = Button("Dropbox:number1Blue", vec2(256, 512))
    levelTwo = Button("Dropbox:number2Blue", vec2(512, 512))
    levelThree = Button("Dropbox:number3Blue", vec2(768, 512))
    levelFour = Button("Dropbox:number4Blue", vec2(341, 256))
    levelFive = Button("Dropbox:number5Blue", vec2(682, 256))  
end

function Stormy:draw()
    -- Codea does not automatically call this method
    sprite("Dropbox:Stormy", 512, 384, 1024, 768)
    
    moveBackSelect:draw()
    levelOne:draw()
    levelTwo:draw()
    levelThree:draw()
    levelFour:draw()
    levelFive:draw()
end

function Stormy:touched(touch)
    -- Codea does not automatically call this method
    moveBackSelect:touched(touch)
    
    if(moveBackSelect.selected == true) then
        Scene.Change("WSelect")
    end
    levelOne:touched(touch)
    
    if(levelOne.selected == true) then
        levelSelected = 1
        Scene.Change("LChose")
    end
    levelTwo:touched(touch)
    
    if(levelTwo.selected == true) then
        levelSelected = 2
        Scene.Change("LChose")
    end
    levelThree:touched(touch)
    
    if(levelThree.selected == true) then
        levelSelected = 3
        Scene.Change("LChose")
    end
    levelFour:touched(touch)
    
    if(levelFour.selected == true) then
        levelSelected = 4
        Scene.Change("LChose")
    end
    levelFive:touched(touch)
    
    if(levelFive.selected == true) then
        levelSelected = 5
        Scene.Change("LChose")
    end
end
