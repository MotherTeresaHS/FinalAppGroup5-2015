--# levelChosen
-- LevelChosen
-- Lesson 9a

-- Created by: Mr Coxall
-- Created on: Nov 2014
-- Created for: ICS2O
-- This is the second scene

LevelChosen = class()

-- global to this file
local seriesToShow = {}

local shapes = {}
local shapesToChooseFrom = {}
local shapeLocation = vec2(100, 100)
local tempLocation
local loopCounter
local loopCounter2
local correctAnswerImage
local correctAnswerPosition
local correctAnswerSelectedPosition
local positionOfBlank
local randomNumber
local hintButton

function LevelChosen:init()
    hintButton = Button("Dropbox:circleOrange", vec2(WIDTH/2, HEIGHT/2+200))
    if (worldSelect == "iceberg") then
        for loopCounter = 1, 9 do
            loopCounter2 = loopCounter % 3
            if (loopCounter2 == 0) then
                loopCounter2 = 3
            end
            seriesToShow[loopCounter] = icebergWorldSeries[levelSelected][loopCounter2]
        end
    elseif (worldSelect == "candyland") then
        -- duplicate original table 3 times to make a pattern
        for loopCounter = 1, 9 do
            loopCounter2 = loopCounter % 3
            if (loopCounter2 == 0) then
                loopCounter2 = 3
            end
            seriesToShow[loopCounter] = candyLandWorldSeries[levelSelected][loopCounter2]
        end
    elseif (worldSelect == "stormy") then
        for loopCounter = 1, 9 do
            loopCounter2 = loopCounter % 3
            if (loopCounter2 == 0) then
                loopCounter2 = 3
            end
            seriesToShow[loopCounter] = stormyWorldSeries[levelSelected][loopCounter2]
        end
    elseif (worldSelect == "peachy") then
        for loopCounter = 1, 9 do
            loopCounter2 = loopCounter % 3
            if (loopCounter2 == 0) then
                loopCounter2 = 3
            end
            seriesToShow[loopCounter] = peachyWorldSeries[levelSelected][loopCounter2]
        end
    elseif (worldSelect == "stargaze") then
        for loopCounter = 1, 9 do
            loopCounter2 = loopCounter % 3
            if (loopCounter2 == 0) then
                loopCounter2 = 3
            end
            seriesToShow[loopCounter] = starGazeWorldSeries[levelSelected][loopCounter2]
        end
    end
        
    -- now randomly relace one with a blank
    positionOfBlank = math.random(1,#seriesToShow)
    print("Correct answer is: " .. seriesToShow[positionOfBlank])
    correctAnswerImage = seriesToShow[positionOfBlank]
    correctAnswerPosition = positionOfBlank
    seriesToShow[positionOfBlank] = "Cargo Bot:Condition None"
    

    for loopCounter = 1,9 do
        shapes[loopCounter] = SpriteObject(seriesToShow[loopCounter], shapeLocation)
        shapes[loopCounter].draggable = false
        shapeLocation = vec2(shapeLocation.x+100, shapeLocation.y)
        print(shapeLocation)
    end

    -- place shapes to select on screen
    shapeLocation = vec2(150, 400)

    for loopCounter = 1,5 do
        -- have to ensure none of the selections are the actual real answer
        -- if they are, we could have more than 1 right answer
        repeat
            randomNumber = math.random(1, #selectionShapes)
        until (selectionShapes[randomNumber] ~= correctAnswerImage)
        if ((worldSelect == "iceberg") or (worldSelect == "candyland"))then
            shapesToChooseFrom[loopCounter] = SpriteObject(selectionShapes[randomNumber], shapeLocation)
            shapeLocation = vec2(shapeLocation.x+150, shapeLocation.y)
        elseif((worldSelect == "stormy") or (worldSelect == "peachy"))then
            shapesToChooseFrom[loopCounter] = SpriteObject(selectionShapes2[randomNumber], shapeLocation)
            shapeLocation = vec2(shapeLocation.x+150, shapeLocation.y)
        elseif(worldSelect == "stargaze")then 
            shapesToChooseFrom[loopCounter] = SpriteObject(selectionShapes3[randomNumber], shapeLocation)
            shapeLocation = vec2(shapeLocation.x+150, shapeLocation.y)
        end
    end

    -- now replace one of the random shapes with the correct one
    correctAnswerSelectedPosition = math.random(1, 5)
    shapesToChooseFrom[correctAnswerSelectedPosition].objectImage = correctAnswerImage

    --sprite("Cargo Bot:Crate Blue 1")

end

function LevelChosen:draw()
    
    font("AmericanTypewriter-Bold")
    fontSize(50)
    fill(0, 244, 255, 255)
    text("skips" ..  hints, WIDTH/2, HEIGHT/2+250)
    -- Codea does not automatically call this method
    if(worldSelect == "iceberg")then
        sprite("Dropbox:iceberg", WIDTH/2, HEIGHT/2, 1024, 768)
    elseif(worldSelect == "candyland")then
        sprite("Dropbox:CandyLand", WIDTH/2, HEIGHT/2, 1024, 768)
    elseif(worldSelect == "stormy")then
        sprite("Dropbox:Stormy", WIDTH/2, HEIGHT/2, 1024, 768)
    elseif(worldSelect == "peachy")then
        sprite("Dropbox:peachy", WIDTH/2, HEIGHT/2, 1024, 768)
    elseif(worldSelect == "stargaze")then
        sprite("Dropbox:stargaze", WIDTH/2, HEIGHT/2, 1024, 768)
    end
    
    hintButton:draw()
    text("skips:" .. math.floor(hints), WIDTH/2+200, HEIGHT/2+300)
    fontSize(25)
    text("skip", WIDTH/2, HEIGHT/2+200)
    --background(121, 255, 0, 255)

    for loopCounter = 1,#shapes do
        shapes[loopCounter]:draw()
    end

    for loopCounter = 1,#shapesToChooseFrom do
        shapesToChooseFrom[loopCounter]:draw()
    end
end

function LevelChosen:touched(touch)
    if (hints >= 1)then
        hintButton:touched(touch)
        if (hintButton.selected == true) then
            hints = hints-1
            saveLocalData("hints", hints)
            shapeLocation = vec2(100, 100)
            Scene.Change("correct")
        end
    end
    -- Codea does not automatically call this method

    --for loopCounter = 1,#shapes do
        --shapes[loopCounter]:touched(touch)
    --end

    for loopCounter = 1,#shapesToChooseFrom do
        shapesToChooseFrom[loopCounter]:touched(touch)
    end

    if (shapes[correctAnswerPosition]:isTouching(shapesToChooseFrom[correctAnswerSelectedPosition])) then
        shapeLocation = vec2(100, 100)
        stars = stars + 3
        saveLocalData("stars", stars)
        totalStars = totalStars + 3
        saveLocalData("highscore", totalStars)
        Scene.Change("correct")
        
    end

    if (touch.state == ENDED) then
        for loopCounter = 1,#shapesToChooseFrom do
        shapesToChooseFrom[loopCounter].objectCurrentLocation = shapesToChooseFrom[loopCounter].objectStartLocation
        end
    end

end