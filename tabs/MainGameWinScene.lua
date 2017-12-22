-- ICS2O-2016-Group6
-- MainGameWinScene

-- Created by: ?
-- Created on: ?
-- Created for: ICS2O
-- Updated by: Mr. Coxall
-- This is the project for Group #6-2016
-- Shows correct and then moves back to main game

MainGameWinScene = class()

-- local variables to this scene
local startTimeWin

function MainGameWinScene:init()
    -- you can accept and set parameters here
    
    -- scene setup code here
    startTimeWin = ElapsedTime

end

function MainGameWinScene:draw()
    -- Codea does not automatically call this method
    background(15, 216, 11, 255)
    font("AmericanTypewriter-Bold")
    fontSize(100)
    fill(0, 0, 0, 255)
    text("Correct",WIDTH/2,HEIGHT/2)
    
    if(startTimeWin + 1 < ElapsedTime) then
        Scene.Change("mainGameScene")
    end
end

function MainGameWinScene:touched(touch)
    -- Codea does not automatically call this method
    
end
