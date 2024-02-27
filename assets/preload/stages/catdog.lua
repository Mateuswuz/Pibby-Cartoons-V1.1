function onCreate()
	makeLuaSprite('fondo', 'BG/catdog/fondo', -1940, -1680);
	setScrollFactor('fondo', 0.8, 0.8);
	scaleObject('fondo', 2.3, 2.3);
	
	makeLuaSprite('montana', 'BG/catdog/montana', -1940, -1680);
	setScrollFactor('montana', 1, 1);
	scaleObject('montana', 2.3, 2.3);
	
	makeLuaSprite('casa', 'BG/catdog/casa', -1940, -1680);
	setScrollFactor('casa', 1, 1);
	scaleObject('casa', 2.3, 2.3);
	
	makeLuaSprite('arbol', 'BG/catdog/arbol', -1940, -1680);
	setScrollFactor('arbol', 1, 1);
	scaleObject('arbol', 2.3, 2.3);
        
	makeLuaSprite('overlay','BG/catdog/Overlay',-1940, -1680)
	setLuaSpriteScrollFactor('overlay',1, 1);
	scaleObject('overlay', 2.3, 2.3);
	        
	addLuaSprite('fondo', false);
	addLuaSprite('montana', false);
    addLuaSprite('casa', false);
    addLuaSprite('arbol', false);
	setObjectOrder('overlay', 8)
end