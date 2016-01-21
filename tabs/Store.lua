-- Store 
-- FinalAppGroup5-2015
-- Created by: Josh beaulac 
-- Created on: Dec 2015
-- Created for: ICS20 
-- This program is where you can get extra hints

Store = class() 
    local buying1hint 
    local buying3hints 
    local buying2hints
    local moveBackMain
    
function Store:init()
    
    --sprite("Dropbox:Red Cancel Button")
    --sprite("Dropbox:Red Back Circle Button")
    buying1hint = Button("Dropbox:Red Cancel Button", vec2(300, 500, 100, 200))     
    buying3hints = Button("Dropbox:Red Cancel Button", vec2(300, 160, 100, 100))     
    buying2hints= Button("Dropbox:Red Cancel Button", vec2(300, 330, 100, 100))
    moveBackMain = Button("Dropbox:Red Back Circle Button", vec2(100, 100, 100, 100))
    
    font("ArialRoundedMTBold")     
    fontSize(150)     
    fill(255, 8, 0, 255)
    text("Hi", 500, 400)
end
function Store:draw()
    
--sprite("Dropbox:Blue Question Button")  
    print(stars)     
    if (stars >= 5) then         
        buying1hint.currentButtonImage = "Dropbox:Star@-2k"     
    else         
        buying1hint.currentButtonImage = "Dropbox:Red Cancel Button"     
end
    if (stars >= 10) then         
        buying2hints.currentButtonImage = "Dropbox:Star@-2k"         
    else         
        buying2hints.currentButtonImage = "Dropbox:Red Cancel Button"    
end
    if (stars >= 15) then         
        buying3hints.currentButtonImage = "Dropbox:Star@-2k"         
    else         
        buying3hints.currentButtonImage = "Dropbox:Red Cancel Button"     
end
    
    background(255, 153, 0, 255)
    
    buying1hint:draw()
    buying2hints:draw()     
    buying3hints:draw()
    moveBackMain:draw()
    
    text("Store", 500, 668)
    fill(42, 22, 247, 255)     
    fontSize(50)     
    font("Arial-ItalicMT")     
    text("Buy 1 Skip 5 Stars", 580, 500)
    
    fill(67, 0, 255, 255)     
    fontSize(50)     
    font("Arial-ItalicMT")     
    text("Buy 2 Skips 10 Stars", 590, 325)
    
    fill(33, 0, 255, 255)     
    fontSize(50)     
    font("Arial-ItalicMT")     
    text("Buy 3 Skips 15 Stars", 590, 150)
    
    fill(255, 0, 220, 255)     
    fontSize(50)    
    font("Arial-BoldItalicMT")     
    text("Stars", 800, 700)
    
    fill(225, 0, 220, 225)     
    font("Arial-ItalicMT")     
    fontSize(50)     print(stars)     
    text(math.floor(stars), 900, 700)
    
    fill(21, 255, 0, 255)     
    font("Arial-BoldMT")     
    fontSize(50)     
    text("skips", 100, 700)
    
    fill(21, 255, 0, 255)     
    font("Arial-BoldItalicMT")     
    fontSize(50)   
    text(math.floor(hints), 200, 700)
end

function Store:touched(touch)
    
    buying1hint:touched(touch)
    buying2hints:touched(touch)         
    buying3hints:touched(touch)
    moveBackMain:touched(touch)
    
    if(moveBackMain.selected == true) then
        Scene.Change("MScene")
    end
    
    if(buying1hint.selected == true) then
        if(stars>=5) then
            stars=stars-5 
            saveLocalData("stars", stars)
            hints = hints + 1
            saveLocalData("hints", hints)
        end
    end
    
    if(buying2hints.selected == true) then
        if(stars>=10) then
            stars=stars-10 
            saveLocalData("stars", stars)
            hints = hints + 2
            saveLocalData("hints", hints)
            end
        end
    
    if(buying3hints.selected == true) then
        if(stars>=15) then
            stars=stars-15 
            saveLocalData("stars", stars)
            hints = hints + 3
            saveLocalData("hints", hints)
        end
    end
end    
