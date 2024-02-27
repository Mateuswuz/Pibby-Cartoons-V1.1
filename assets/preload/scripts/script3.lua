
function onCreatePost()
--add shader 
addHaxeLibrary('Std')
initLuaShader("GLT")

makeLuaSprite("temporaryShader1")
setSpriteShader("temporaryShader1", "GLT")
--runShader   
runHaxeCode([[

game.initLuaShader('chromabber');

chroma = game.createRuntimeShader('chromabber');

trace(ShaderFilter);

game.camGame.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader1").shader),new ShaderFilter(chroma)]);
game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader1").shader)]);

chroma.setFloat('amount',-0.2);
setVar('lastChromAmount',-0.2);

]])

addHaxeLibrary("ShaderFilter1", "openfl.filters")
setShaderFloat("Shader", "amount", -0.2)
setShaderFloat("temporaryShader1", "AMT", 0)
setShaderFloat("temporaryShader1", "SPEED", 0)

end

function onUpdatePost()
    setShaderFloat("temporaryShader1", "iTime", os.clock())
end
