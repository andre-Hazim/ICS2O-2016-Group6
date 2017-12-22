SettingsScene = class()

-- variables local to entire file
local moveBackButton
local muteButton
local unmuteButton

function SettingsScene:init()

    --sprite("Dropbox:Play Button")
    moveBackButton = Button("Dropbox:Blue Back Circle Button", vec2(75, HEIGHT-75)) 
    muteButton = Button("Dropbox:Stop Button", vec2(WIDTH/2, HEIGHT/1.5))
    unmuteButton = Button("Dropbox:Play Button", vec2(WIDTH/2, HEIGHT/2))
    
     
end
    
function SettingsScene:draw()
    -- Codea does not automatically call this method

    background(142, 71, 123, 255)
    fill(255, 0, 204, 255)
    stroke(221, 255, 0, 255)
    fontSize(75)
    font("Copperplate-Bold")
    pushStyle()
    text("Settings", WIDTH/2, HEIGHT/1.05)
    text("Here you can mute or unmute the music", WIDTH/2, HEIGHT/3)
    moveBackButton:draw()
    muteButton:draw()
    unmuteButton:draw()
    popStyle()
end

function SettingsScene:touched(touch)
    -- Codea does not automatically call this method
    
    moveBackButton:touched(touch)
    muteButton:touched(touch)
    unmuteButton:touched(touch)
    
      
    if(moveBackButton.selected == true) then
        Scene.Change("mainMenuScene")
    end
    
    if(muteButton.selected == true) then
        music.muted = true
    end
    
    if(unmuteButton.selected == true) then
        music.muted = false
    end
end