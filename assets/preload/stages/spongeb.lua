function onCreate()
	makeLuaSprite('water','water',-2420, -1640)
	setLuaSpriteScrollFactor('water',0.8, 0.8);
    scaleObject('water', 4.3, 4.3);
    
    makeLuaSprite('ground','ground',-2420, -1640)
	setLuaSpriteScrollFactor('ground',1, 1);
    scaleObject('ground', 4.3, 4.3);

    addLuaSprite('water',false)
    addLuaSprite('ground',false)
end
