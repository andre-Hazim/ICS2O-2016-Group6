-- CreditsScene
-- Lesson 6

-- Created by: Justin Richards
-- Created on: Nov 2014
-- Created for: ICS2O
-- This is the credits scene

CreditsScene = class()

-- variables local to entire file
local aBackButton

function CreditsScene:init()

    --sprite("Cargo Bot:Command Right")
    aBackButton = Button("Dropbox:Blue Back Circle Button", vec2(75, HEIGHT-75))  
   
end
    

function CreditsScene:draw()
    -- Codea does not automatically call this method

    background(255, 33, 0, 255)
    sprite("Documents:CreditsBackground", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    sprite("Dropbox:Dialogue Box", WIDTH/2, HEIGHT/1.15)
    pushStyle()
    fill(0, 255, 240, 255)
    stroke(117, 0, 255, 255)
    fontSize(75)
    font("Baskerville-SemiBoldItalic")
    text("Credits", WIDTH/2, HEIGHT/1.15) 
    
    fontSize(70)
    fill(255, 0, 0, 255)
    font("HelveticaNeue-CondensedBlack")
    text("Grade 10", WIDTH/2, HEIGHT/1.45)
    
    fontSize(50)
    fill(255, 14, 0, 255)
    font("HelveticaNeue-CondensedBlack")
    text("Ben", WIDTH/2, HEIGHT/1.67)
    
    fontSize(50)
    text("Justin", WIDTH/2, HEIGHT/1.95)
    
    text("Andre", WIDTH/2, HEIGHT/2.29)
    
    fontSize(70)
    fill(0, 125, 255, 255)
    text("Grade 3", WIDTH/2, HEIGHT/2.8)
    
    fontSize(50)
    text("Nubia", WIDTH/2, HEIGHT/4)
    text("Michael", WIDTH/2, HEIGHT/5.5)
    text("Panelappy", WIDTH/2, HEIGHT/8.5)
    
    
 
    aBackButton:draw()
    popStyle()
end

function CreditsScene:touched(touch)
    -- Codea does not automatically call this method
    
    aBackButton:touched(touch)
    
    if(aBackButton.selected == true) then
        Scene.Change("mainMenuScene")
    end
end
