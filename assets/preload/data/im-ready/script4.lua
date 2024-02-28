function onCreatePost()
runTimer('delay', '1.2')
end

tweened = false;

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'delay' and tweened == false then
doTweenAngle('tween', 'camGame', '10', '3', 'linear');
doTweenY('twen', 'camGame', 20, 3, 'smootherStepInOut')
runTimer('delay', '1.5')
tweened = true
elseif tag == 'delay' and tweened == true then
doTweenAngle('tween', 'camGame', '-10', '3', 'linear');
doTweenY('twen', 'camGame', -10, 3, 'smootherStepInOut')
tweened = false 
runTimer('delay', '1.5')
end
end
