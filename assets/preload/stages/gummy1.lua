function onCreate()
	makeLuaSprite('gummy1', 'BG/gummy/gummy1', -1230, -730);
	setScrollFactor('gummy1', 1, 1);
	scaleObject('gummy1', 1.9, 1.9);
	
	 makeAnimatedLuaSprite('glitchgummy', 'BG/gummy/glitchgummy', -1230, 100)
    luaSpriteAddAnimationByPrefix('glitchgummy', 'idle', 'idle', 24, true);
    setScrollFactor('glitchgummy', 1, 1);
    scaleObject('glitchgummy', 2, 2);

	addLuaSprite('gummy1', false);
    addLuaSprite('glitchgummy', false);
end