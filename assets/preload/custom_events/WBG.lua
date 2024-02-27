function onCreate()
makeLuaSprite('WBG', nil, -2500, -1200)
makeGraphic('WBG',5000,5000,'ffffff')
addLuaSprite('WBG', false)
scaleObject('WBG', 5, 5);
setScrollFactor('WBG', 0, 0)
setProperty('WBG.visible', false)

initLuaShader("INV")
setSpriteShader("dad", "INV")
setSpriteShader("gf", "INV")
setSpriteShader("boyfriend", "INV")
setSpriteShader("WBG", "INV")

setShaderInt("dad", "invert", 0)
setShaderInt("gf", "invert", 0)
setShaderInt("boyfriend", "invert", 0)
setShaderInt("WBG", "invert", 0)
end

function onEvent(name,value1,value2)
if name == 'Change Character' then
initLuaShader("INV")
if value1 == 'dad' then
setSpriteShader("dad", "INV")
setShaderInt("dad", "invert", 0)
elseif value1 == 'bf' then
setSpriteShader("boyfriend", "INV")
setShaderInt("boyfriend", "invert", 0)
elseif value1 == 'gf' then
setSpriteShader("gf", "INV")
setShaderInt("gf", "invert", 0)
end
end

if name == 'WBG' then

if value1 == 'Won' then
setProperty('boyfriend.color', getColorFromHex('000000'))
setProperty('dad.color', getColorFromHex('000000'))
setProperty('gf.color', getColorFromHex('000000'))
setProperty('WBG.visible', true)
setProperty('iconP1.visible', false)
setProperty('healthBar.visible', false)
setProperty('healthBarBG.visible', false)
setProperty('iconP2.visible', false)
setProperty('timeTxt.visible', false)
setProperty('timeBar.visible', false)
setProperty('timeBarBG.visible', false)
setProperty('scoreTxt.visible', false)
setProperty('overlay.visible', false)
setProperty('Foreground2.visible', false)
setShaderInt("dad", "invert", 0)
setShaderInt("gf", "invert", 0)
setShaderInt("boyfriend", "invert", 0)
setShaderInt("WBG", "invert", 0)
end

if value1 == 'Bon' then

setProperty('boyfriend.color', getColorFromHex('000000'))
setProperty('dad.color', getColorFromHex('000000'))
setProperty('gf.color', getColorFromHex('000000'))
setProperty('WBG.visible', true)
setProperty('iconP1.visible', false)
setProperty('healthBar.visible', false)
setProperty('healthBarBG.visible', false)
setProperty('iconP2.visible', false)
setProperty('timeTxt.visible', false)
setProperty('timeBar.visible', false)
setProperty('timeBarBG.visible', false)
setProperty('overlay.visible', false)
setProperty('Foreground2.visible', false)
setProperty('scoreTxt.visible', false)
setShaderInt("dad", "invert", 1)
setShaderInt("gf", "invert", 1)
setShaderInt("boyfriend", "invert", 1)
setShaderInt("WBG", "invert", 1)
end

if value1 == 'off' then
setProperty('boyfriend.color', getColorFromHex('ffffff'))
setProperty('dad.color', getColorFromHex('ffffff'))
setProperty('gf.color', getColorFromHex('ffffff'))
setProperty('WBG.visible', false)
setProperty('iconP1.visible', true)
setProperty('healthBar.visible', true)
setProperty('healthBarBG.visible', true)
setProperty('iconP2.visible', true)
setProperty('timeTxt.visible', true)
setProperty('overlay.visible', true)
setProperty('Foreground2.visible', true)
setProperty('timeBar.visible', true)
setProperty('timeBarBG.visible', true)
setProperty('scoreTxt.visible', true)
setShaderInt("dad", "invert", 0)
setShaderInt("gf", "invert", 0)
setShaderInt("boyfriend", "invert", 0)
setShaderInt("WBG", "invert", 0)
end
end
end