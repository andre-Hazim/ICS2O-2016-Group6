StoreHelpScene = class()

--variables
local moveBack





function StoreHelpScene:init(x)
    -- you can accept and set parameters here
   -- sprite("Dropbox:Blue Back Circle Button")
    moveBack = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/20, HEIGHT/1.067))
    
        
end

function StoreHelpScene:draw()
    -- Codea does not automatically call this method
    background(backgroundColor)
    
     

    pushStyle()
    sprite("Dropbox:Dialogue Box", WIDTH/2 ,HEIGHT/1.15)
    fontSize(40)
    font("Zapfino")
    fill(31, 54, 88, 255)
    text("Store Help", WIDTH/2, HEIGHT/1.15)
    
    
    fontSize(33)
    fill(214, 0, 255, 255)
    font("TimesNewRomanPS-BoldItalicMT")
    text("-The store is where you buy items that will effect the games backgrounds", WIDTH/2, HEIGHT/1.62)
    
    fontSize(33)
    fill(214, 0, 255, 255)
    text("-With the store comes a bunch of different coloured backgrounds", WIDTH/2, HEIGHT/2)
    text("that effect a lot of different scenes exept for the legendary background", WIDTH/2, HEIGHT/2.2)
    
    

    
    
    popStyle()
    
    moveBack:draw()
    
    
    
    
end

function StoreHelpScene:touched(touch)
    -- Codea does not automatically call this method
    moveBack:touched(touch)
    
    if(moveBack.selected == true) then
        Scene.Change("storeScreenScene")
    end
    
    
    
    
    
end
