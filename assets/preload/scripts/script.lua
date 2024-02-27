toggle = false

function onCreatePost()
   if curStage == 'roblox' then
    -- Font Thing --

    setTextString('scoreTxt', 'Score:'..score)
    setTextFont('scoreTxt', 'rob.ttf')
    setTextFont('timeTxt', 'rob.ttf')

    makeLuaSprite('hud', 'uiRoblox/roblox', 0, 0);
    setObjectCamera('hud', 'other');
    addLuaSprite('hud', false);

    makeLuaSprite('hud2', 'uiRoblox/tab', 0, 0);
    setObjectCamera('hud2', 'other');
    addLuaSprite('hud2', false);

    makeLuaSprite('exit', 'uiRoblox/robloxicon', 0, 0);
    setObjectCamera('exit', 'camOther');
    addLuaSprite('exit', false);

    setProperty('canPause',false)
   end

   setPropertyFromClass('flixel.FlxG', 'mouse.visible', true)
end

function onUpdate()

   if keyboardJustPressed('TAB') then
      toggle = not toggle
   end

   if toggle then
      doTweenX('bye bye', 'hud2', 350, 0.2, easeIn) 
     else
      doTweenX('bye bye', 'hud2', 0, 0.2, easeIn) 
     end
end

function mouseOverlaps(tag, camera)
   x = getMouseX(camera or 'camHUD')
   y = getMouseY(camera or 'camHUD')
   return (x > getProperty(tag..'.x') and y > getProperty(tag..'.y') and x < (getProperty(tag..'.x') + getProperty(tag..'.width')) and y < (getProperty(tag..'.y') + getProperty(tag..'.height')))
 end
 

function onUpdatePost()
   if mouseOverlaps('exit', 'camOther') and mouseClicked() then
      runHaxeCode([[game.openPauseMenu()]])
   end
end
