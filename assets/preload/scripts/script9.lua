function opponentNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'Glitch Note' and glitchn then
setShaderFloat("dad", "binaryIntensity", -0.5)
setShaderFloat("temporaryShader1", "AMT", 0.1)
setShaderFloat("temporaryShader1", "SPEED", 0.1)
setShaderFloat('opponentStrums.members[0]', "AMT", 0.25)
setShaderFloat('opponentStrums.members[0]', "SPEED", 0.2)
setShaderFloat('opponentStrums.members[1]', "AMT", 0.25)
setShaderFloat('opponentStrums.members[1]', "SPEED", 0.2)
setShaderFloat('opponentStrums.members[2]', "AMT", 0.25)
setShaderFloat('opponentStrums.members[2]', "SPEED", 0.2)
setShaderFloat('opponentStrums.members[3]', "AMT", 0.25)
setShaderFloat('opponentStrums.members[3]', "SPEED", 0.2)
runTimer('removeshader', 0.1)
end
end

glitchn = true

function onTimerCompleted(tag)
if tag == 'removeshader' then
setShaderFloat("temporaryShader1", "AMT", 0)
setShaderFloat("temporaryShader1", "SPEED", 0)
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

function onUpdate()
if glitchactive <= 5 then
setShaderFloat("dad", "iTime", os.clock())
end
end
