function onCreatePost()
runTimer('delay', 3, 3)
end

tweened = false;

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'delay' and tweened == false then
doTweenAngle('tween', 'camGame', '2', '3', 'linear');
doTweenY('twen', 'camGame', 20, 3, 'smootherStepInOut')
runTimer('delay', 3, 3)
tweened = true
elseif tag == 'delay' and tweened == true then
doTweenAngle('tween', 'camGame', '-2', '3', 'linear');
doTweenY('twen', 'camGame', -10, 3, 'smootherStepInOut')
tweened = false 
runTimer('delay', 3, 3)
end
end