Credits = class()

function Credits:init(x)
    -- you can accept and set parameters here
    self.x = x
end

function Credits:draw()
    -- Codea does not automatically call this method
    background(111, 0, 255, 255)
    
    font("AmericanTypewriter-Bold")
    fill(0, 0, 0, 255)
    text("GUI: Justin", 512, 600)
end

function Credits:touched(touch)
    -- Codea does not automatically call this method
end
