function onCreatePost()
initLuaShader("PAG")    

setSpriteShader('opponentStrums.members[0]', 'PAG')
setSpriteShader('opponentStrums.members[1]', 'PAG')
setSpriteShader('opponentStrums.members[2]', 'PAG')
setSpriteShader('opponentStrums.members[3]', 'PAG')
end
function onUpdate()
if camFLW then
setProperty('camFollow.x', camX)
setProperty('camFollow.y', camY)
end
setShaderFloat("opponentStrums.members[0]", "iTime", os.clock())
setShaderFloat("opponentStrums.members[1]", "iTime", os.clock())
setShaderFloat("opponentStrums.members[2]", "iTime", os.clock())
setShaderFloat("opponentStrums.members[3]", "iTime", os.clock())
end
function onEvent(name,v1,v2)
if name == "GumballEvents" then
    
if v1 == 'dad' then
camFLW = true
camX = 900
camY = 780
setProperty('cameraSpeed', 999)
end
if v1 == 'bf' then
camFLW = true
camX = 1400
camY = 780
setProperty('cameraSpeed', 999)
end
if v1 == 'no' then
camFLW =false
setProperty('cameraSpeed', 1)
end
if v1 == 'bg-glitch' then
setSpriteShader("school", "GLT")
setShaderFloat("school", "AMT", v2)
setShaderFloat("school", "SPEED", v2)
end	
if v1 == 'colors' then
setProperty('dad.colorTransform.redOffset', 255)
setProperty('dad.colorTransform.greenOffset', 255)
setProperty('dad.colorTransform.blueOffset', 255)
setProperty('boyfriend.colorTransform.redOffset', 255)
setProperty('boyfriend.colorTransform.greenOffset', 255)
setProperty('boyfriend.colorTransform.blueOffset', 255)
end
if v1 == 'no colors' then
setProperty('dad.colorTransform.redOffset', 0)
setProperty('dad.colorTransform.greenOffset', 0)
setProperty('dad.colorTransform.blueOffset', 0)
setProperty('boyfriend.colorTransform.redOffset', 0)
setProperty('boyfriend.colorTransform.greenOffset', 0)
setProperty('boyfriend.colorTransform.blueOffset', 0)
end
if v1 == 'ready' then
setShaderFloat('opponentStrums.members[0]', "AMT", 0.25)
setShaderFloat('opponentStrums.members[0]', "SPEED", 0.2)
setShaderFloat('opponentStrums.members[1]', "AMT", 0.25)
setShaderFloat('opponentStrums.members[1]', "SPEED", 0.2)
setShaderFloat('opponentStrums.members[2]', "AMT", 0.25)
setShaderFloat('opponentStrums.members[2]', "SPEED", 0.2)
setShaderFloat('opponentStrums.members[3]', "AMT", 0.25)
setShaderFloat('opponentStrums.members[3]', "SPEED", 0.2)
end
if v1 == 'fuck' then
setShaderFloat('opponentStrums.members[0]', "AMT", 0)
setShaderFloat('opponentStrums.members[0]', "SPEED", 0)
setShaderFloat('opponentStrums.members[1]', "AMT", 0)
setShaderFloat('opponentStrums.members[1]', "SPEED", 0)
setShaderFloat('opponentStrums.members[2]', "AMT", 0)
setShaderFloat('opponentStrums.members[2]', "SPEED", 0)
setShaderFloat('opponentStrums.members[3]', "AMT", 0)
setShaderFloat('opponentStrums.members[3]', "SPEED", 0)
end
end
end