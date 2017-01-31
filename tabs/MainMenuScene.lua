-- ICS2O-2016-Group6
-- MainMenuScene

-- Created by: Justin Richards
-- Created by: Ben Hubert
-- Created on: Nov-2016
-- Created for: ICS2O
-- This is the project for Group #6-2016
-- This is the main menu scene

MainMenuScene = class()

-- local variables to this scene
local storeButton
local creditsButton
local acheivmentsButton
local playButton
local owneditemsbutton
local settingsButton

-- Use this function to perform your initial setup for this scene
function MainMenuScene:init()
    -- set up display options
    noFill()
    noSmooth()
    noStroke()
    pushStyle()  

 --sprite("Dropbox:GoodStoreIcon")
        
    -- scene setup code here
    storeButton = Button("Dropbox:GoodStoreIcon", vec2(WIDTH/2, HEIGHT/10))
    creditsButton = Button("Dropbox:Selector", vec2(WIDTH/1.05, HEIGHT/0.9899))
    acheivmentsButton = Button("Dropbox:Chest Closed", vec2(WIDTH/20, HEIGHT/0.9899))
    playButton = Button("Dropbox:Blue Move Scene Forward Button", vec2(WIDTH/2, HEIGHT/2))
    settingsButton = Button("Dropbox:Explosion", vec2(WIDTH/21, HEIGHT/8))
end

function MainMenuScene:draw()
    -- Codea does not automatically call this method
    
    -- Do your drawing here
    background(backgroundColor)
    
    storeButton:draw()
    creditsButton:draw()
    acheivmentsButton:draw()
    playButton:draw()
    settingsButton:draw()
    
end

function MainMenuScene:touched(touch)
    -- Codea does not automatically call this method
    
    storeButton:touched(touch)
    creditsButton:touched(touch)
    acheivmentsButton:touched(touch)
    playButton:touched(touch)
    settingsButton:touched(touch)
    
    if(storeButton.selected == true) then
       Scene.Change("storeScreenScene")
    end
    
    if(creditsButton.selected == true) then
       Scene.Change("creditsScene")
    end
    
    if(playButton.selected == true) then
        Scene.Change("mainWorldScene")
    end
    
    if(settingsButton.selected == true) then
        Scene.Change("settingsScene")
    end
end