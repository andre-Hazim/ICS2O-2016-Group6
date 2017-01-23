OwnedItemsHelpScene = class()
local moveBackStore
function OwnedItemsHelpScene:init(x)
    -- you can accept and set parameters here
    sprite("Dropbox:Blue Back Circle Button")
    moveBackStore = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/20, HEIGHT/1.067))
end

function OwnedItemsHelpScene:draw()
    -- Codea does not automatically call this method
    background(255, 255, 255, 255)
    sprite("Dropbox:Dialogue Box", WIDTH/2, HEIGHT/1.15)
    sprite("Dropbox:Icon1024 23", WIDTH/2, HEIGHT/3.2, WIDTH/2, HEIGHT/2)
 
    textSize(70)
    font("AmericanTypewriter-Bold")
    fill(255, 0, 200, 255)
    text("-This scene is to give the the ability to equip different store items that you have Purshased", WIDTH/2, HEIGHT/1.6)
    text("-Only items that you have purchased from the in game store will show up in the Owned items menu", WIDTH/2, HEIGHT/1.7)
    
       fontSize(40)
    font("AmericanTypewriter-Bold")
    fill(31, 55, 96, 255)
    text("Owned Items Help", WIDTH/2, HEIGHT/1.15)
    
    moveBackStore:draw()
end

function OwnedItemsHelpScene:touched(touch)
    -- Codea does not automatically call this method
    
    moveBackStore:touched(touch)
    
    if(moveBackStore.selected == true) then
        Scene.Change("ownedItemsScene")
    end
end
