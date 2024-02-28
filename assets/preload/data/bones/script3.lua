function onCreatePost()
    makeLuaSprite('logo', 'ui/cnLogo2', 950, 550);
    setObjectCamera('logo', 'camHUD')
    scaleObject('logo', 0.25, 0.25, true)
    addLuaSprite('logo', true);

end
