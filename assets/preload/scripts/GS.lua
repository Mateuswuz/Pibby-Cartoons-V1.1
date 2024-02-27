local Chromacrap = 0;

function boundTo(value, min, max)
return math.max(min, math.min(max, value))
end

function math.lerp(from,to,i) return from+(to-from)*i end

function setChrome(chromeOffset)
setShaderFloat("temporaryShader", "rOffset", chromeOffset);
setShaderFloat("temporaryShader", "gOffset", 0.0);
setShaderFloat("temporaryShader", "bOffset", chromeOffset * -1);
end

function onSongStart()
	
noteX0 = getPropertyFromGroup('strumLineNotes','0','x')
noteX1 = getPropertyFromGroup('strumLineNotes','1','x')
noteX2 = getPropertyFromGroup('strumLineNotes','2','x')
noteX3 = getPropertyFromGroup('strumLineNotes','3','x')
noteX4 = getPropertyFromGroup('strumLineNotes','4','x')
noteX5 = getPropertyFromGroup('strumLineNotes','5','x')
noteX6 = getPropertyFromGroup('strumLineNotes','6','x')
noteX7 = getPropertyFromGroup('strumLineNotes','7','x')
      
noteY0 = getPropertyFromGroup('strumLineNotes','0','y')
noteY1 = getPropertyFromGroup('strumLineNotes','1','y')
noteY2 = getPropertyFromGroup('strumLineNotes','2','y')
noteY3 = getPropertyFromGroup('strumLineNotes','3','y')
noteY4 = getPropertyFromGroup('strumLineNotes','4','y')
noteY5 = getPropertyFromGroup('strumLineNotes','5','y')
noteY6 = getPropertyFromGroup('strumLineNotes','6','y')
noteY7 = getPropertyFromGroup('strumLineNotes','7','y')
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'Glitch Note' then
Chromacrap = Chromacrap + 0.002; -- edit this
cameraShake('camGame', 0.01, 0.2)
if math.random(1,2) == 1 then
end
noteTweenX('glitchNoteX0','0' ,math.random(noteX0- 10,noteX0+ 10),0.01,'quadInOut')     
noteTweenY('glitchNoteY0', '0' ,math.random(noteY0- 10,noteY0+ 10),0.01,'quadInOut')
         
noteTweenX('glitchNoteX1','1' ,math.random(noteX1- 10,noteX1+ 10),0.01,'quadInOut')     
noteTweenY('glitchNoteY1', '1' ,math.random(noteY1- 10,noteY1+ 10),0.01,'quadInOut')
            
noteTweenX('glitchNoteX2','2' ,math.random(noteX2- 10,noteX2+ 10),0.01,'quadInOut')     
noteTweenY('glitchNoteY2', '2' ,math.random(noteY2- 10,noteY2+ 10),0.01,'quadInOut')
         
noteTweenX('glitchNoteX3','3' ,math.random(noteX3- 10,noteX3+ 10),0.01,'quadInOut')     
noteTweenY('glitchNoteY3', '3' ,math.random(noteY3- 10,noteY3+ 10),0.01,'quadInOut')
         
noteTweenX('glitchNoteX4','4' ,math.random(noteX4- 10,noteX4+ 10),0.01,'quadInOut')     
noteTweenY('glitchNoteY4', '4' ,math.random(noteY4- 10,noteY4+ 10),0.01,'quadInOut')
         
noteTweenX('glitchNoteX5','5' ,math.random(noteX5- 10,noteX5+ 10),0.01,'quadInOut')     
noteTweenY('glitchNoteY5', '5' ,math.random(noteY5- 10,noteY5+ 10),0.01,'quadInOut')
         
noteTweenX('glitchNoteX6','6' ,math.random(noteX6- 10,noteX6+ 10),0.01,'quadInOut')     
noteTweenY('glitchNoteY6', '6' ,math.random(noteY6- 10,noteY6+ 10),0.01,'quadInOut')
         
noteTweenX('glitchNoteX7','7' ,math.random(noteX7- 10,noteX7+ 10),0.01,'quadInOut')     
noteTweenY('glitchNoteY7', '7' ,math.random(noteY7- 10,noteY7+ 10),0.01,'quadInOut')
end
end
    
function onCreatePost()
if (shadersEnabled) then
initLuaShader("vcr");
            
makeLuaSprite("temporaryShader");
makeGraphic("temporaryShader", screenWidth, screenHeight);
            
setSpriteShader("temporaryShader", "vcr");
            
addHaxeLibrary("ShaderFilter", "openfl.filters");
runHaxeCode([[
trace(ShaderFilter);
game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader").shader)]);
]]);
end
end
    
function onUpdate(elapsed)
if (shadersEnabled) then
Chromacrap = math.lerp(Chromacrap, 0, boundTo(elapsed *10,0, 30));
setChrome(Chromacrap);
end
end
    
function onBeatHit()
if curBeat % 4 == 0 then
    Chromacrap = Chromacrap + 0.004;
    end
end