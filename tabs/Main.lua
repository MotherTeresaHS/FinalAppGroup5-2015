-- Main
-- FinalAppGroup5-2015

-- Created by: Justin Bronson
-- Created on: Nov 2015
-- Created for: ICS20
-- This is the main tab

-- Use this function to perform your initial setup
stars = 0
hints = 0
highscore = nil
levelSelected = nil
worldSelect = nil
totalStars = 0

icebergWorld = {} 
candyLandWorld = {} 
storyWorld = {} 
peachyWorld = {} 
starGazeWorld = {}
--icebergWorld[1] = true icebergWorld[2] = false 
--sprite("Dropbox:rectangleOrange")

icebergWorldSeries = {} 
icebergWorldSeries[1] = {} 
icebergWorldSeries[1][1] = "Dropbox:circleOrange" 
icebergWorldSeries[1][2] = "Dropbox:diamondYellow" 
icebergWorldSeries[1][3] = "Dropbox:squareBlue"

selectionShapes = {} 
selectionShapes[1] = "Dropbox:rectangleRed" 
selectionShapes[2] = "Dropbox:diamondRed" 
selectionShapes[3] = "Dropbox:rectangleOrange" 
selectionShapes[4] = "Dropbox:circleYellow" 
selectionShapes[5] = "Dropbox:circleRed" 
selectionShapes[6] = "Dropbox:squareBlue" 
selectionShapes[7] = "Dropbox:squareOrange"

selectionShapes2 = {} 
selectionShapes2[1] = "Dropbox:number1Red" 
selectionShapes2[2] = "Dropbox:number2Blue" 
selectionShapes2[3] = "Dropbox:number3Teal" 
selectionShapes2[4] = "Dropbox:number4Yellow" 
selectionShapes2[5] = "Dropbox:number5Purple" 
selectionShapes2[6] = "Dropbox:number3Red" 
selectionShapes2[7] = "Dropbox:number4Red"

selectionShapes3 = {} 
selectionShapes3[1] = "Dropbox:number1Red" 
selectionShapes3[2] = "Dropbox:diamondRed" 
selectionShapes3[3] = "Dropbox:number3Teal" 
selectionShapes3[4] = "Dropbox:circleYellow" 
selectionShapes3[5] = "Dropbox:number5Purple" 
selectionShapes3[6] = "Dropbox:squareBlue" 
selectionShapes3[7] = "Dropbox:number5Blue"

icebergWorldSeries[2] = {} 
icebergWorldSeries[2][1] = "Dropbox:diamondYellow" 
icebergWorldSeries[2][2] = "Dropbox:squareBlue" 
icebergWorldSeries[2][3] = "Dropbox:circleOrange"

icebergWorldSeries[3] = {} 
icebergWorldSeries[3][1] = "Dropbox:circleOrange" 
icebergWorldSeries[3][2] = "Dropbox:squareBlue" 
icebergWorldSeries[3][3] = "Dropbox:diamondYellow"

icebergWorldSeries[4] = {} 
icebergWorldSeries[4][1] = "Dropbox:diamondYellow" 
icebergWorldSeries[4][2] = "Dropbox:squareBlue" 
icebergWorldSeries[4][3] = "Dropbox:squareBlue"

icebergWorldSeries[5] = {} 
icebergWorldSeries[5][1] = "Dropbox:diamondYellow" 
icebergWorldSeries[5][2] = "Dropbox:circleOrange" 
icebergWorldSeries[5][3] = "Dropbox:diamondYellow"

candyLandWorldSeries = {} 
candyLandWorldSeries[1] = {} 
candyLandWorldSeries[1][1] = "Dropbox:diamondYellow" 
candyLandWorldSeries[1][2] = "Dropbox:diamondBlue" 
candyLandWorldSeries[1][3] = "Dropbox:diamondOrange"

candyLandWorldSeries[2] = {} 
candyLandWorldSeries[2][1] = "Dropbox:diamondOrange" 
candyLandWorldSeries[2][2] = "Dropbox:diamondBlue" 
candyLandWorldSeries[2][3] = "Dropbox:diamondOrange"

candyLandWorldSeries[3] = {} 
candyLandWorldSeries[3][1] = "Dropbox:squareBlue" 
candyLandWorldSeries[3][2] = "Dropbox:squareYellow" 
candyLandWorldSeries[3][3] = "Dropbox:squareYellow"

candyLandWorldSeries[4] = {} 
candyLandWorldSeries[4][1] = "Dropbox:squareBlue" 
candyLandWorldSeries[4][2] = "Dropbox:squareYellow" 
candyLandWorldSeries[4][3] = "Dropbox:diamondBlue"

candyLandWorldSeries[5] = {} 
candyLandWorldSeries[5][1] = "Dropbox:squareBlue" 
candyLandWorldSeries[5][2] = "Dropbox:diamondBlue" 
candyLandWorldSeries[5][3] = "Dropbox:squareBlue"

stormyWorldSeries = {} 
stormyWorldSeries[1] = {} 
stormyWorldSeries[1][1] = "Dropbox:number1Teal" 
stormyWorldSeries[1][2] = "Dropbox:number2Red" 
stormyWorldSeries[1][3] = "Dropbox:number3Blue"

stormyWorldSeries[2] = {}
stormyWorldSeries[2][1] = "Dropbox:number5Red"
stormyWorldSeries[2][2] = "Dropbox:number4Blue"
stormyWorldSeries[2][3] = "Dropbox:number3Yellow"

stormyWorldSeries[3] = {}
stormyWorldSeries[3][1] = "Dropbox:number1Teal"
stormyWorldSeries[3][2] = "Dropbox:number5Red"
stormyWorldSeries[3][3] = "Dropbox:number2Yellow"

stormyWorldSeries[4] = {}
stormyWorldSeries[4][1] = "Dropbox:number1Teal"
stormyWorldSeries[4][2] = "Dropbox:number3Yellow"
stormyWorldSeries[4][3] = "Dropbox:number5Blue"

stormyWorldSeries[5] = {}
stormyWorldSeries[5][1] = "Dropbox:number3Yellow"
stormyWorldSeries[5][2] = "Dropbox:number5Teal"
stormyWorldSeries[5][3] = "Dropbox:number1Blue"

peachyWorldSeries = {} 
peachyWorldSeries[1] = {} 
peachyWorldSeries[1][1] = "Dropbox:number5Red" 
peachyWorldSeries[1][2] = "Dropbox:number5Blue" 
peachyWorldSeries[1][3] = "Dropbox:number5Teal"

peachyWorldSeries[2] = {} 
peachyWorldSeries[2][1] = "Dropbox:number1Blue"
peachyWorldSeries[2][2] = "Dropbox:number1Teal"
peachyWorldSeries[2][3] = "Dropbox:number2Yellow"

peachyWorldSeries[3] = {}
peachyWorldSeries[3][1] = "Dropbox:number5Blue"
peachyWorldSeries[3][2] = "Dropbox:number1Purple"
peachyWorldSeries[3][3] = "Dropbox:number5Blue"

peachyWorldSeries[4] = {}
peachyWorldSeries[4][1] = "Dropbox:number3Yellow"
peachyWorldSeries[4][2] = "Dropbox:number3Yellow"
peachyWorldSeries[4][3] = "Dropbox:number1Purple"

peachyWorldSeries[5] = {}
peachyWorldSeries[5][1] = "Dropbox:bumber1Yellow"
peachyWorldSeries[5][2] = "Dropbox:number4Purple"
peachyWorldSeries[5][3] = "Dropbox:number4Purple"


starGazeWorldSeries = {} 
starGazeWorldSeries[1] = {} 
starGazeWorldSeries[1][1] = "Dropbox:bumber1Yellow" 
starGazeWorldSeries[1][2] = "Dropbox:diamondOrange" 
starGazeWorldSeries[1][3] = "Dropbox:number2Teal"

starGazeWorldSeries[2] = {}
starGazeWorldSeries[2][1] = "Dropbox:circleBlue"
starGazeWorldSeries[2][2] = "Dropbox:squareRed"
starGazeWorldSeries[2][3] = "Dropbox:number1Teal"

starGazeWorldSeries[3] = {}
starGazeWorldSeries[3][1] = "Dropbox:circleBlue"
starGazeWorldSeries[3][2] = "Dropbox:number2Teal"
starGazeWorldSeries[3][3] = "Dropbox:circleOrange"

starGazeWorldSeries[4] = {}
starGazeWorldSeries[4][1] = "Dropbox:circleBlue"
starGazeWorldSeries[4][2] = "Dropbox:circleBlue"
starGazeWorldSeries[4][3] = "Dropbox:number4Blue"

starGazeWorldSeries[5] = {}
starGazeWorldSeries[5][1] = "Dropbox:number4Purple"
starGazeWorldSeries[5][2] = "Dropbox:number4Red"
starGazeWorldSeries[5][3] = "Dropbox:circleBlue"


function setup()
    
    
    supportedOrientations(LANDSCAPE_ANY)
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    totalStars = readLocalData("highscore", 0)
    stars = readLocalData("stars", 0)
    hints = readLocalData("hints", 0)
    --create the scenes
    Scene("CLogo", CompanyLogo)
    Scene("GLogo", GameLogo)
    Scene("MScene", MainScene)
    Scene("Store", Store)
    Scene("Tut", Tutorial)
    Scene("TutC", TutCorrect)
    Scene("WSelect", WorldSelect)
    Scene("Ice", Iceberg)
    Scene("Candy", CandyLand)
    Scene("Storm", Stormy)
    Scene("Peach", Peachy)
    Scene("Star", Stargaze)
    Scene("LChose", LevelChosen)
    Scene("Setting", Settings)
    Scene("Credits", Credits)
    Scene("correct", CorrectScene)
    
    Scene.Change("CLogo")
      
end

-- This function gets called once every frame
function draw()
    -- This sets a dark background color 
    background(40, 40, 50)
    
    Scene.Draw()
end

function touched(touch)
    
    Scene.Touched(touch) 
end
