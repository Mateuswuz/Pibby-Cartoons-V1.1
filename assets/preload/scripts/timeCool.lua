--script by SarahTheDimwit#9948 (you don't have to put me in the credits as long as you leave this comment)

--Settings!!! (real i think)

local accentColor = 'FFFFFF' --hex color code of text and bar
local style = 'modern' --style choices are "modern", "classic", and "advanced"
local font = 'vcr.ttf' --you have to include .ttf at the end btw

function onCreate()
--apparently loading all the characters of a font first helps with lag so
    makeLuaText('fontShit', 'QWERTYUIOPASDFGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnm1234567890')
    setTextFont('fontShit', font)
end

function onSongStart()
    if style == 'modern' then
        if not downscroll then
	    makeLuaText('name', songName, screenWidth, 0, 50)
        else
        makeLuaText('name', songName, screenWidth, 0, 650)
        end
    elseif style == 'advanced' then
        if not downscroll then
	    makeLuaText('name', songName .. ' / ' .. difficultyName, screenWidth, 0, 50)
        else
        makeLuaText('name', songName .. ' / ' .. difficultyName, screenWidth, 0, 650)
        end
    end
	setObjectCamera('name', 'camHUD')
	setTextSize('name', 20)
	addLuaText('name', true)
end

function onUpdatePost()
    setTextAlignment('name', 'center')
    setTextColor('name', accentColor)
    setTextColor('timeTxt', accentColor)
    setProperty('timeBar.color', getColorFromHex(accentColor));
    setTextFont('timeTxt', font)
    setTextFont('name', font)
    local  timeElapsed = math.floor(getProperty('songTime')/1000)
    local  timeTotal = math.floor(getProperty('songLength')/1000)
    local timeElapsedFixed = string.format("%.2d:%.2d", timeElapsed/60%60, timeElapsed%60)
    local timeTotalFixed = string.format("%.2d:%.2d", timeTotal/60%60, timeTotal%60)
    if style == 'modern' then
        setTextString('timeTxt', timeElapsedFixed .. ' / ' .. timeTotalFixed)
    elseif style == 'classic' then
        setTextString('timeTxt', songName .. ' [' .. timeElapsedFixed .. '/' .. timeTotalFixed .. ']')
    elseif style == 'advanced' then
        setTextString('timeTxt', timeElapsedFixed .. ' / ' .. getProperty('healthBar.percent') .. '% / ' .. timeTotalFixed)
    end
end

function formatTime(millisecond)
    local seconds = math.floor(millisecond / 1000)

    return string.format("%.2d:%.2d", (seconds / 60) % 60, seconds % 60)  
end