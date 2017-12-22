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

--sprite("Dropbox:Leaderboards")
        
    -- scene setup code here
    storeButton = Button("Dropbox:GoodStoreIcon", vec2(WIDTH/2, 75))
    creditsButton = Button("Dropbox:Blue Info Button", vec2(WIDTH-75, HEIGHT-75))
    --acheivmentsButton = Button("Dropbox:Leaderboards", vec2(75, HEIGHT-75), 0.3)
    playButton = Button("Dropbox:Blue Move Scene Forward Button", vec2(WIDTH/2, HEIGHT/2))
    --settingsButton = Button("Dropbox:Blue Settings Button", vec2(75, 75))
end

function MainMenuScene:draw()
    -- Codea does not automatically call this method
    
    -- Do your drawing here
    background(backgroundColor)
    
    storeButton:draw()
    creditsButton:draw()
    --acheivmentsButton:draw()
    playButton:draw()
    --settingsButton:draw()
    
    font("AmericanTypewriter-Bold")
    fontSize(75)
    fill(0, 0, 0, 255)
    pushStyle()
    text ("Your high score is: " .. math.ceil(highScore), WIDTH/2, (HEIGHT/2-200))
    popStyle()
    
end

function MainMenuScene:touched(touch)
    -- Codea does not automatically call this method
    
    storeButton:touched(touch)
    creditsButton:touched(touch)
    --acheivmentsButton:touched(touch)
    playButton:touched(touch)
    --settingsButton:touched(touch)
    
    if(storeButton.selected == true) then
       Scene.Change("storeScreenScene")
    end
    
    if(creditsButton.selected == true) then
       Scene.Change("creditsScene")
    end
    
    if(playButton.selected == true) then
        Scene.Change("mainWorldScene")
    end
    
    --if(settingsButton.selected == true) then
        --Scene.Change("settingsScene")
    --end
    
    --if (acheivmentsButton.selected == true) then
        -- always check to ensure Game Center is logged in
        -- before doing a command, or the player will
        -- get anoying warnings!
        --if (gamecenter.enabled() == true) then
           -- gamecenter.showLeaderboards()
       -- end
   -- end  
end