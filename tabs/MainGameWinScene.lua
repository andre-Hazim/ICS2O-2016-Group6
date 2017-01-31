MainGameWinScene = class()
local timelimit = 1

function MainGameWinScene:init(x)
    -- you can accept and set parameters here
    self.x = x
end

function MainGameWinScene:draw()
    -- Codea does not automatically call this method
    background(15, 216, 11, 255)
    font("AmericanTypewriter-Bold")
    fontSize(100)
    fill(0, 0, 0, 255)
    text("Correct",WIDTH/2,HEIGHT/2)
    timelimit = timelimit - 0.02
    math.ceil(timelimit)
    if (timelimit <=0)then
        Scene.Change("mainGameScene")
        timelimit= 1
    end
    

    
end

function MainGameWinScene:touched(touch)
    -- Codea does not automatically call this method
    
end
