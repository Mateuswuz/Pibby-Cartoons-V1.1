function onEvent(name, v1, v2)
if name == 'Flash_White' then
makeLuaSprite('HiF', '', 0, 0);
makeGraphic('HiF',screenWidth,screenHeight,'ffffff')

setObjectCamera('HiF', 'HUD')

addLuaSprite('HiF', false);
--ty funkinLua.HX
setBlendMode('HiF', 'add') --adobe animate reference
setProperty('HiF.alpha',v2)
if v2 == '' then
setProperty('HiF.alpha',1)
end

doTweenAlpha('flTw','HiF',0,v1,'linear')
end
end