-- WorldSelect
-- FinalAppGroup5-2015

-- Created by: Justin Bronson
-- Created on: Nov 2015
-- Created for: ICS20
-- This scene is where you can choose a world to play in

WorldSelect = class()

--global to this fill    
    local moveIceberg
    local moveCandyland
    local moveStormy
    local movePeachy
    local moveStargaze
    local sky
    local moveBackMGame

function WorldSelect:init(x)
    -- you can accept and set parameters here
    
    --sprite("Dropbox:worldRed")
    --sprite("Dropbox:worldBlue")
    --sprite("Dropbox:worldYellow")
    --sprite("Dropbox:worldPurple")
    --sprite("Dropbox:WorldTeal")
    --sprite("Dropbox:Yellow Back Circle Button")
    moveIceberg = Button("Dropbox:worldTeal", vec2(170, HEIGHT/2))
    moveCandyland = Button("Dropbox:worldRed", vec2(340, HEIGHT/2))
    moveStormy = Button("Dropbox:worldBlue", vec2(510, HEIGHT/2))
    movePeachy = Button("Dropbox:worldYellow", vec2(680, HEIGHT/2))
    moveStargaze = Button("Dropbox:worldPurple", vec2(850, HEIGHT/2))
    moveBackMGame = Button("Dropbox:Yellow Back Circle Button", vec2(100, 100))
end

function WorldSelect:draw()
    -- Codea does not automatically call this method
    sprite("Dropbox:Sky Background", 512, 384, 1024, 768)
    
    fontSize(80)
    font("AmericanTypewriter-Bold")
    fill(0, 0, 0, 255)
    
    text("Worlds", 512, 675)
    
    moveIceberg:draw()
    moveCandyland:draw()
    moveStormy:draw()
    movePeachy:draw()
    moveStargaze:draw()
    moveBackMGame:draw()
end

function WorldSelect:touched(touch)
    -- Codea does not automatically call this method
    moveIceberg:touched(touch)
    
    if(moveIceberg.selected == true) then
        WorldSelect = "iceberg"
        Scene.Change("Ice")
    end
    moveCandyland:touched(touch)
    
    if(moveCandyland.selected == true) then
        worldSelect = "candyland"
        Scene.Change("Candy")
    end
    moveStormy:touched(touch)
    
    if(moveStormy.selected == true) then
        worldSelect = "stormy"
        Scene.Change("Storm")
    end
    movePeachy:touched(touch)
    
    if(movePeachy.selected == true) then
        worldSelect = "peachy"
        Scene.Change("Peach")
    end
    moveStargaze:touched(touch)
    
    if(moveStargaze.selected == true) then
        worldSelect = "stargaze"
        Scene.Change("Star")
    end
    moveBackMGame:touched(touch)
    
    if(moveBackMGame.selected == true) then
        Scene.Change("MScene")
    end
end
