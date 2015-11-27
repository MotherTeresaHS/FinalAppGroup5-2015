MainGame = class()

function MainGame:init(x)
    -- you can accept and set parameters here
    local moveWorldSelect
    local moveMainScene
end

function MainGame:draw()
    -- Codea does not automatically call this method
    
    --sprite("Dropbox:Red Level Menu Button")
    --sprite("Dropbox:Red Back Circle Button")
    moveWorldSelect = Button("Dropbox:Red Level Menu Button", vec2(924, 100))
    moveMainScene = Button("Dropbox:Red Back Circle Button", vec2(100, 100))
    
    moveWorldSelect:draw()
    moveMainScene:draw()
end

function MainGame:touched(touch)
    -- Codea does not automatically call this method
    moveMainScene:touched(touch)
    
    if(moveMainScene.selected == true) then
        Scene.Change("MScene")
    end
    
    moveWorldSelect:touched(touch)
    
    if(moveWorldSelect.selected == true) then
        Scene.Change("WSelect")
        
    end
end
