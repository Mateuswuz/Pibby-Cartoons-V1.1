function onCreate()
   setProperty('skipCountdown', true)
end

function opponentNoteHit()
    health = getProperty('health')
 if getProperty('health') > 0.35 then
    setProperty('health', health- 0.03);
 end
end