function onCreate()
	makeLuaSprite('Finn y Jake Fondo', 'BG/finnLab/Finn y Jake Fondo', -5, -100);
	setScrollFactor('Finn y Jake Fondo', 1, 1);
	scaleObject('Finn y Jake Fondo', 0.9, 0.9);
	        
	makeLuaSprite('Finn y Jake Escritorio3', 'BG/finnLab/Finn y Jake Escritorio3', -5, -5);
	setScrollFactor('Finn y Jake Escritorio3', 1, 1);
	scaleObject('Finn y Jake Escritorio3', 0.6, 0.6);
        
	makeLuaSprite('Finn y Jake Pizarron', 'BG/finnLab/Finn y Jake Pizarron', -5, -5);
	setScrollFactor('Finn y Jake Pizarron', 1, 1);
	scaleObject('Finn y Jake Pizarron', 0.6, 0.6);
	
	makeLuaSprite('Finn y Jake Escritorio1', 'BG/finnLab/Finn y Jake Escritorio1', 0, -50);
	setScrollFactor('Finn y Jake Escritorio1', 1, 1);
	scaleObject('Finn y Jake Escritorio1', 0.9, 0.9);
        
	makeLuaSprite('Finn y Jake Escritorio3', 'BG/finnLab/Finn y Jake Escritorio3', -5, -5);
	setScrollFactor('Finn y Jake Escritorio3', 1, 1);
	scaleObject('Finn y Jake Escritorio3', 0.6, 0.6);
        
	makeLuaSprite('Estante', 'BG/finnLab/Finn y Jake Estante', -5, -5);
	setScrollFactor('Estante', 1, 1);
	scaleObject('Estante', 0.5, 0.5);
        
	makeLuaSprite('Finn y Jake Escritorio2', 'BG/finnLab/Finn y Jake Escritorio2', -5, -5);
	setScrollFactor('Finn y Jake Escritorio2', 1, 1);
	scaleObject('Finn y Jake Escritorio2', 0.6, 0.6);
                 
        	 makeAnimatedLuaSprite('melirafinn', 'BG/finnlab/melirafinn', 1330, 780)
    luaSpriteAddAnimationByPrefix('melirafinn', 'idle', 'MIdle', 24, true);
    setScrollFactor('melirafinn', 1, 1);
    scaleObject('melirafinn', 2.0, 2.0);
                 
        	 makeAnimatedLuaSprite('alloyfinn', 'BG/finnlab/alloyfinn', 1830, 780)
    luaSpriteAddAnimationByPrefix('alloyfinn', 'idle', 'AIdle', 24, true);
    setScrollFactor('alloyfinn', 1, 1);
    scaleObject('alloyfinn', 1.7, 1.7);

    addLuaSprite('Finn y Jake Fondo', false);
	addLuaSprite('Finn y Jake Pizarron', false);
    addLuaSprite('Finn y Jake Escritorio3', false);
    addLuaSprite('Finn y Jake Escritorio2', false);
    addLuaSprite('Finn y Jake Escritorio1', false);
    addLuaSprite('Estante', false);
    addLuaSprite('alloyfinn', false);
    addLuaSprite('melirafinn', false);
	setObjectOrder('gfGroup', getObjectOrder('Estante') - 1)
	setObjectOrder('dadGroup', getObjectOrder('Estante') - 1)
end