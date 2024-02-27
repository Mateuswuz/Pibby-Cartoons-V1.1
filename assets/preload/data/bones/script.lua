local shaderName = "blur"
function onCreate()
    shaderCoordFix()

    makeLuaSprite("tempShader0")

    runHaxeCode([[
        var shaderName = "]] .. shaderName .. [[";
        
        game.initLuaShader(shaderName);
        
        shader0 = game.createRuntimeShader(shaderName);
        FlxG.game.setFilters([new ShaderFilter(shader0)]);
    ]])

runHaxeCode([[
        shader0.setFloat("cx", 0.4);
    ]])
runHaxeCode([[
        shader0.setFloat("cy", 0.4);
    ]])


end


function shaderCoordFix()
    runHaxeCode([[
        resetCamCache = function(?spr) {
            if (spr == null || spr.filters == null) return;
            spr.__cacheBitmap = null;
            spr.__cacheBitmapData3 = spr.__cacheBitmapData2 = spr.__cacheBitmapData = null;
            spr.__cacheBitmapColorTransform = null;
        }
        
        fixShaderCoordFix = function(?_) {
            resetCamCache(game.camGame.flashSprite);
            resetCamCache(game.camHUD.flashSprite);
            resetCamCache(game.camOther.flashSprite);
        }
    
        FlxG.signals.gameResized.add(fixShaderCoordFix);
        fixShaderCoordFix();
    ]])
    
    local temp = onDestroy
    function onDestroy()
        runHaxeCode([[
            FlxG.signals.gameResized.remove(fixShaderCoordFix);
        ]])
        temp()
    end
end
function onEndSong()
    runHaxeCode('FlxG.game.setFilters([]);')
end

function onGameOver()
    runHaxeCode('FlxG.game.setFilters([]);')
end

function onDestroy()
    runHaxeCode('FlxG.game.setFilters([]);')
end

blurlev = 0
function onEvent(name,v1,v2)
if name == 'Add Camera Zoom' then
blurlev = 0.1
end
end

function onUpdatePost(elapsed)
blurlev = math.lerp(blurlev,0,boundTo(elapsed * 5, 0, 100))
end
function onUpdate()

runHaxeCode([[
        shader0.setFloat("blurWidth", ]]..blurlev..[[);
    ]])
end

function boundTo(value, min, max)
return math.max(min, math.min(max, value))
end

function math.lerp(from,to,i)
return from + (to - from) * i
end
