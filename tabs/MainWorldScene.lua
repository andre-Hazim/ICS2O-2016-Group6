-- MainWorldScene
-- Lesson 6

-- Created by: Justin Richards
-- Created on: Nov 2014
-- Created for: ICS2O
-- This is the main worlds scene

MainWorldScene = class()

-- variables local to entire file  
local mBackButton
local ww1Button
local ww2Button
local ww3Button
local ww4Button


function MainWorldScene:init()

    -- sprite("Dropbox:fallWorld")
    mBackButton = Button("Dropbox:Blue Back Circle Button", vec2(75, HEIGHT-75))  
    ww1Button = Button("Dropbox:summerWorld@2x (1)", vec2(WIDTH/4, HEIGHT/1.3))
    ww2Button = Button("Dropbox:springWorld", vec2(WIDTH/1.3, HEIGHT/1.3))
    ww3Button = Button("Dropbox:winterWorld", vec2(WIDTH/4, HEIGHT/3.5))
    ww4Button = Button("Dropbox:fallWorld", vec2(WIDTH/1.3, HEIGHT/3.5))    
end
    

function MainWorldScene:draw()
    -- Codea does not automatically call this method

    background(backgroundColor)
    fill(199, 255, 0, 255)
    stroke(221, 255, 0, 255)
    fontSize(75)
    pushStyle()
    popStyle()
    mBackButton:draw()
    ww1Button:draw()
    ww2Button:draw()
    ww3Button:draw()
    ww4Button:draw()
    
    font("AmericanTypewriter-Bold")
    fontSize(50)
    fill(0, 0, 0, 255)
    pushStyle()
    text("Summer", WIDTH/4, HEIGHT/1.3-100)
    text("Spring", WIDTH/1.3, HEIGHT/1.3-100)
    text("Winter", WIDTH/4, HEIGHT/3.5-100)
    text("Fall", WIDTH/1.3, HEIGHT/3.5-100)
    popStyle()
    
end

function MainWorldScene:touched(touch)
    -- Codea does not automatically call this method
    
    mBackButton:touched(touch)
    ww1Button:touched(touch)
    ww2Button:touched(touch)
    ww3Button:touched(touch)
    ww4Button:touched(touch)
    
    if(mBackButton.selected == true) then
        Scene.Change("mainMenuScene")
    end
    if(ww1Button.selected == true)then
        worldSelected =1 
        Scene.Change("mainGameScene")
    elseif(ww2Button.selected == true)then
        worldSelected = 2
        Scene.Change("mainGameScene")
    elseif(ww3Button.selected == true)then
        worldSelected = 3
        Scene.Change("mainGameScene")
    elseif(ww4Button.selected == true)then
        worldSelected = 4
        Scene.Change("mainGameScene")
    end
end