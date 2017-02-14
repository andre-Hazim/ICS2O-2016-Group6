AfterLevelWinScene = class()

local backButton

function AfterLevelWinScene:init()
    -- you can accept and set parameters here
    sprite("Dropbox:Blue Back Circle Button")
    backButton = Button("Dropbox:Blue Back Circle Button", vec2(75, HEIGHT-75))
    
    highScore = highScore + score
    print(highScore)
    -- ensure this is really true before you save
    -- in your code you you might have a reset button!!
    saveLocalData("highScore", highScore)
    -- always check to ensure Game Center is logged in
    -- before doing a command, or the player will
    -- get anoying warnings!
   -- if (gamecenter.enabled() == true) then
     --   gamecenter.submitScore(math.floor(highScore))
  --  end
    -- zero the score again
    score = 0
end

function AfterLevelWinScene:draw()
    -- Codea does not automatically call this method
    font("AmericanTypewriter-Bold")
    fontSize(75)
    fill(0, 0, 0, 255)
    pushStyle()
    text("You Won!", WIDTH/2, HEIGHT/2)
    text ("Your new high score is: " .. math.ceil(highScore), WIDTH/2, (HEIGHT/2-200))
    popStyle()
    backButton:draw()
end

function AfterLevelWinScene:touched(touch)
    -- Codea does not automatically call this method
    backButton:touched(touch)
    if(backButton.selected == true)then
        Scene.Change("mainWorldScene")
    end
end
