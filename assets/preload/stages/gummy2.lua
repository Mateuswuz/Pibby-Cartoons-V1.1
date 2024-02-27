function onCreate()
	makeLuaSprite('gummy2', 'BG/gummy/gummy2', -1230, -730);
	setScrollFactor('gummy2', 1, 1);
	scaleObject('gummy2', 1.9, 1.9);
	
	 makeAnimatedLuaSprite('glitchgummy', 'BG/gummy/glitchgummy', -1230, -110)
    luaSpriteAddAnimationByPrefix('glitchgummy', 'idle', 'idle', 24, true);
    setScrollFactor('glitchgummy', 1, 1);
    scaleObject('glitchgummy', 1.3, 1.3);

	addLuaSprite('gummy2', false);
    addLuaSprite('glitchgummy', false);
end