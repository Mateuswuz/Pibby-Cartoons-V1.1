function onCreate()
	
	makeLuaSprite('Escenario','Escenario',-5, 60)
	setLuaSpriteScrollFactor('Escenario',1, 1);
	scaleObject('Escenario', 1.2, 1.4);
	
	makeLuaSprite('Dino','Dino',-5, 175)
	setLuaSpriteScrollFactor('Dino',1, 1);
	scaleObject('Dino', 1.2, 1.2);
	
    addLuaSprite('Escenario',false)
    addLuaSprite('Dino',true)
	setObjectOrder('dadGroup', 8)
end
