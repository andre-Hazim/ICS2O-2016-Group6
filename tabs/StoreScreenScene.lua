-- StoreScreenScene
-- Lesson 6

-- Created by: Justin Richards
-- Created by: Ben Hubert
-- Created on: Nov 2014
-- Created for: ICS2O
-- This is the store scene

StoreScreenScene = class()

-- variables local to entire file
local moveBackButton
local ownedItemsButton
local redBackground
local defaultBackground
local defaultBackgroundColor
local purpleBackground
local blueBackground
local greenBackground
local justinSpecial
local orangeBackground
local storeHelpButton
local legendaryBackground
local legendbackground
local codeBackground


function StoreScreenScene:init()
    --sprite("Dropbox:MenuBackground")
    moveBackButton = Button("Dropbox:Blue Back Circle Button", vec2(75, HEIGHT-75))  
    redBackground = Button("Dropbox:Level Select BG", vec2(WIDTH/2, HEIGHT/2.3))
    defaultBackground = Button("Dropbox:Level Select BG", vec2(WIDTH/2, HEIGHT/1.6))
    purpleBackground = Button("Dropbox:Level Select BG", vec2(WIDTH/2, HEIGHT/4.1))
    blueBackground = Button("Dropbox:Level Select BG", vec2(WIDTH/4.9, HEIGHT/1.6))
    greenBackground = Button("Dropbox:Level Select BG",  vec2(WIDTH/1.25, HEIGHT/1.6))
    justinSpecial = Button("Dropbox:Level Select BG", vec2(WIDTH/4.9, HEIGHT/2.3))
    orangeBackground = Button("Dropbox:Level Select BG", vec2(WIDTH/1.25, HEIGHT/2.3))
    storeHelpButton = Button("Dropbox:Blue Info Button",  vec2(WIDTH/1.06, HEIGHT/1.067))
    legendaryBackground = Button("Dropbox:Level Select BG", vec2(WIDTH/1.25, HEIGHT/4.1))
    codeBackground = Button("Dropbox:Level Select BG", vec2(WIDTH/4.9, HEIGHT/4.1))
    --legendbackground = sprite("Dropbox:MenuBackground", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    
end
    

function StoreScreenScene:draw()
    -- Codea does not automatically call this method
    --sprite()
    
    font("AmericanTypewriter-Bold")
    fill(255, 8, 0, 255)
    
    --sprite()
    --print(backgroundChangeColor)
    background(backgroundColor)
    if(legendaryBackground.selected == true) then
        --legendbackground = true
        sprite("Dropbox:legendaryBackground", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    
    end
    
    sprite("Dropbox:Dialogue Box", WIDTH/2, HEIGHT/1.15)
    fill(31, 54, 88, 255)
    stroke(221, 255, 0, 255)
    fontSize(75)
    font("Copperplate-Bold")
    pushStyle()
    text("Shop",WIDTH/2, HEIGHT/1.15)

    moveBackButton:draw()
    redBackground:draw()
    defaultBackground:draw()
    purpleBackground:draw()
    blueBackground:draw()
    greenBackground:draw()
    justinSpecial:draw()
    orangeBackground:draw()
    storeHelpButton:draw()
    legendaryBackground:draw()
    codeBackground:draw()
    --legendbackground:draw()
    

    fontSize(28)
    fill(255, 0, 0, 255)
    text("Red Background", WIDTH/2, HEIGHT/2.3)
    
    fontSize(22)
    fill(255, 255, 255, 255)
    text("Default Background", WIDTH/2, HEIGHT/1.6)
    
    fontSize(23)
    fill(206, 0, 255, 255)
    text("Purple Background", WIDTH/2, HEIGHT/4.1)
    
    fontSize(26)
    fill(0, 103, 255, 255)
    text("Blue Background", WIDTH/4.9, HEIGHT/1.6)
    
    fontSize(26)
    fill(35, 106, 31, 255)
    text("Shrek's Swamp!", WIDTH/1.25, HEIGHT/1.6)
    
    fontSize(26)
    fill(0, 255, 251, 255)
    text("Ocean Wave", WIDTH/4.9, HEIGHT/2.3)
    
    fontSize(23)
    font("Zapfino")
    fill(0, 255, 134, 255)
    text("L", WIDTH/1.39, HEIGHT/4.1)
    
    fontSize(23)
    fill(255, 0, 0, 255)
    text("e", WIDTH/1.35, HEIGHT/4.1)
    
    fontSize(23)
    fill(0, 85, 255, 255)
    text("g", WIDTH/1.32, HEIGHT/4.1)
    
    fontSize(23)
    fill(244, 0, 255, 255)
    text("e", WIDTH/1.29, HEIGHT/4.1)
    
    fontSize(23)
    fill(255, 127, 0, 255)
    text("n", WIDTH/1.26, HEIGHT/4.1)
    
    fontSize(23)
    fill(58, 255, 0, 255)
    text("d", WIDTH/1.23, HEIGHT/4.1)
    
    fontSize(23)
    fill(0, 251, 255, 255)
    text("a", WIDTH/1.20, HEIGHT/4.1)
    
    fontSize(23)
    fill(175, 118, 226, 255)
    text("r", WIDTH/1.17, HEIGHT/4.1)
    
    fontSize(23)
    fill(255, 250, 0, 255)
    text("y", WIDTH/1.14, HEIGHT/4.1)
    
    fontSize(50)
    font("Papyrus")
    fill(49, 49, 49, 255)
    text("Reaper", WIDTH/1.24, HEIGHT/2.3)
    
    fontSize(27)
    fill(255, 0, 239, 255)
    font("Noteworthy-Bold")
    text("Pink Background", WIDTH/4.9, HEIGHT/4.1)
    popStyle()
    
    
end

function StoreScreenScene:touched(touch)
    -- Codea does not automatically call this method
    
    moveBackButton:touched(touch)
    redBackground:touched(touch)
    defaultBackground:touched(touch)
    purpleBackground:touched(touch)
    blueBackground:touched(touch)
    greenBackground:touched(touch)
    justinSpecial:touched(touch)
    orangeBackground:touched(touch)
    storeHelpButton:touched(touch)
    legendaryBackground:touched(touch)
    codeBackground:touched(touch)

    if(moveBackButton.selected == true) then
        Scene.Change("mainMenuScene")
    end

    
    if(blueBackground.selected == true) then
        backgroundColor = color(0, 56, 255, 255)
    end
    
    
    if(defaultBackground.selected == true) then
        backgroundColor = color(178, 178, 178, 255)
    end
    
    if(orangeBackground.selected == true) then
        backgroundColor = color(42, 42, 42, 255)
    end
    
    if(purpleBackground.selected == true) then
        backgroundColor = color(141, 0, 255, 255)
    end
    
    if(justinSpecial.selected == true) then
        backgroundColor = color(0, 226, 255, 255)
    end
    
    if(greenBackground.selected == true) then
        backgroundColor = color(31, 101, 60, 255)
    end
    
    if(redBackground.selected == true) then
        backgroundColor = color(255, 0, 0, 255)
    end
    
    if(storeHelpButton.selected == true) then
        Scene.Change("storeHelpScene")
    end 
    
    if(codeBackground.selected == true) then
        backgroundColor = color(255, 0, 246, 255)
    end  
end