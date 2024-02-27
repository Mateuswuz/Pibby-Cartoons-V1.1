function onCreate()
	makeLuaSprite('background','BG/forest/background',-680, -680)
	setLuaSpriteScrollFactor('background',1, 1);
	scaleObject('background', 2.3, 2.3);

	makeLuaSprite('overlay','BG/forest/Overlay',-680, -480)
	setLuaSpriteScrollFactor('overlay',1, 1);
	scaleObject('overlay', 2.5, 2.5);
	
   addLuaSprite('background',false)
	addLuaSprite('overlay',true)
	setObjectOrder('overlay', 8)
end
