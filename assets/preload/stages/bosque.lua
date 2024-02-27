function onCreate()
	makeLuaSprite('cielo', 'BG/bosque/cielo', -5, -5);
	setScrollFactor('cielo', 0.7, 0.7);
	scaleObject('cielo', 1, 1);
	
	makeLuaSprite('montanas', 'BG/bosque/montanas', -5, -5);
	setScrollFactor('montanas', 0.7, 0.7);
	scaleObject('montanas', 1, 1);
	
	makeLuaSprite('Pradera 3', 'BG/bosque/Pradera 3', -5, -5);
	setScrollFactor('Pradera 3', 0.9, 1);
	scaleObject('Pradera 3', 1, 1);
	
	makeLuaSprite('Pradera 2', 'BG/bosque/Pradera 2', -5, -5);
	setScrollFactor('Pradera 2', 0.8, 1);
	scaleObject('Pradera 2', 1, 1);
	
	makeLuaSprite('Pradera 1', 'BG/bosque/Pradera 1', -5, -5);
	setScrollFactor('Pradera 1', 1, 1);
	scaleObject('Pradera 1', 1, 1);
    
    makeLuaSprite('Arboles', 'BG/bosque/arboles', -5, -5);
	setScrollFactor('Arboles', 0.8, 0.8);
	scaleObject('Arboles', 1, 1);
	
	makeLuaSprite('arbusto 4', 'BG/bosque/arbusto 4', -5, -5);
	setScrollFactor('arbusto 4', 1, 1);
	scaleObject('arbusto 4', 1, 1);
	
	makeLuaSprite('arbusto 3', 'BG/bosque/arbusto 3', -5, -5);
	setScrollFactor('arbusto 3', 1, 1);
	scaleObject('arbusto 3', 1, 1);
	
	makeLuaSprite('arbusto 2', 'BG/bosque/arbusto 2', -5, -5);
	setScrollFactor('arbusto 2', 1, 1);
	scaleObject('arbusto 2', 1, 1);
	
	makeLuaSprite('arbusto 1', 'BG/bosque/arbusto 1', -5, -5);
	setScrollFactor('arbusto 1', 1, 1);
	scaleObject('arbusto 1', 1, 1);
	
	makeLuaSprite('Suelo', 'BG/bosque/Suelo', -5, -10);
	setScrollFactor('Suelo', 1, 1);
	scaleObject('Suelo', 1, 1);

	makeLuaSprite('overlay','BG/bosque/overlay',-5, -5)
	setScrollFactor('overlay', 1, 1);
	scaleObject('overlay', 1, 1);
	
	addLuaSprite('cielo', false);
	addLuaSprite('montanas', false);
    addLuaSprite('Pradera 3', false);
    addLuaSprite('Pradera 2', false);
    addLuaSprite('Pradera 1', false);
    addLuaSprite('Arboles', false);
    addLuaSprite('Suelo', false);
    addLuaSprite('arbusto 4', false);
    addLuaSprite('arbusto 3', false);
    addLuaSprite('arbusto 2', false);
    addLuaSprite('arbusto 1', false);
	addLuaSprite('overlay',true)
	setObjectOrder('overlay', 8)
end