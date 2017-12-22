-- ICS2O-2016-Group6
-- Main

-- Created by: Justin Richards
-- Created by: Ben Hubert
-- Created on: Nov-2016
-- Created for: ICS2O
-- This is the project for Group #6-2016
-- This is the initialization Main code to get the game started

-- this turns on Game Center simulation from the Helper Class
-- this is so you can call Game Center code within Codea 
-- and just set this boolean to "false" before you export to Xcode
DEBUG_GAMECENTER = false

-- Global variables to the entire project
itemPurcased = {}
worldSelected = nil
levelSelected = nil
backgroundColor = color(255, 255, 255, 255)
local legendbackground
backMusic = nil
score = 0
highScore = nil

-- local variables to this scene

--sprite("Dropbox:ownedItemsHelpPicture")
-- Use this function to perform your initial setup
function setup() -- set up display options
    
    supportedOrientations(LANDSCAPE_ANY)
    displayMode(FULLSCREEN_NO_BUTTONS)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()    

    highScore = readLocalData("highScore", 0)
    --highScore = 0
    --saveLocalData("highScore", 0)
    
    -- create the scenes
    Scene("companyLogoScene", CompanyLogoScene)
    Scene("gameLogoScene", GameLogoScene)   
    Scene("mainMenuScene", MainMenuScene)
    Scene("storeScreenScene", StoreScreenScene)
    Scene("creditsScene", CreditsScene)
    Scene("mainWorldScene", MainWorldScene)
    Scene("storeHelpScene", StoreHelpScene)
    Scene("mainGameScene", MainGameScene)
    Scene("mainGameFailScene", MainGameFailScene)
    Scene("mainGameWinScene", MainGameWinScene)
    Scene("afterLevelWinScene", AfterLevelWinScene)
    Scene("afterLevelFailScene",AfterLevelFailScene)
    Scene("settingsScene", SettingsScene)

    Scene.Change("companyLogoScene")
    backMusic = music("Game Music One 2:Venus", 10000000)
end

-- This function gets called once every frame
function draw()
    -- This sets a dark background color 
    background(0, 255, 9, 255)

    -- Do your drawing here
    Scene.Draw() 
end

-- This function gets called once every frame
function touched(touch)
    -- Do your touching code here
    Scene.Touched(touch) 
end