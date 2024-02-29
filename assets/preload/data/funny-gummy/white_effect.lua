function onEvent(n,v1,v2)
	if n == 'Weffect' then
	   makeLuaSprite('flash2', '', 0, 0);
        makeGraphic('flash2',1280,720,'ffffff')
	      addLuaSprite('flash2', true);

	setBlendMode('flash2', 'add')
	setObjectCamera ('flash2', 'other')
	      setProperty('flash2.scale.x',1)
	      setProperty('flash2.scale.y',1)
	      setProperty('flash2.alpha',0)
		setProperty('flash2.alpha',0.2)
		doTweenAlpha('flTw','flash2',0,v1,'linear')
	end
end
