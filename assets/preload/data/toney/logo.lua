function onCreatePost()
    makeLuaSprite('logo', 'ui/cnLogo1', 1000, 550);
    setObjectCamera('logo', 'camHUD')
    scaleObject('logo', 0.15, 0.15, true)
    addLuaSprite('logo', true);

end