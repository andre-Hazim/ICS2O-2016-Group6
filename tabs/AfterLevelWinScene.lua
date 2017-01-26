AfterLevelWinScene = class()

local backButton
function AfterLevelWinScene:init()
    -- you can accept and set parameters here
    sprite("Dropbox:Blue Back Circle Button")
    backButton = Button("Dropbox:Blue Back Circle Button", vec2(WIDTH/2, HEIGHT/6))
end

function AfterLevelWinScene:draw()
    -- Codea does not automatically call this method
    font("AmericanTypewriter-Bold")
    fontSize(100)
    fill(0, 0, 0, 255)
    text("You Won!",WIDTH/2,HEIGHT/2)
end

function AfterLevelWinScene:touched(touch)
    -- Codea does not automatically call this method
    if(backButton.selected == true)then
        Scene.Change("mainMenuScene")
    end
end
