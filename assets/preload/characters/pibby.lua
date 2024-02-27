function onCreate()
	makeLuaSprite('background','BG/forest/background',-680, -480)
	setLuaSpriteScrollFactor('background',1, 1);
	scaleObject('background', 2.3, 2.3);

	makeLuaSprite('middleground','BG/forest/middleground',-680, -480)
	setLuaSpriteScrollFactor('middleground',1, 1);
	scaleObject('middleground', 2.3, 2.3);
	
	makeLuaSprite('Foreground2','BG/forest/Foreground',-680, -480)
	setLuaSpriteScrollFactor('Foreground2',1, 1);
	scaleObject('Foreground2', 2.4, 2.4);

	makeLuaSprite('overlay','BG/forest/Overlay',-680, -480)
	setLuaSpriteScrollFactor('overlay',1, 1);
	scaleObject('overlay', 2.5, 2.5);
	
    addLuaSprite('background',false)
    addLuaSprite('middleground',false)
    addLuaSprite('Foreground2',true)
	addLuaSprite('overlay',true)
	setObjectOrder('overlay', 8)
end
