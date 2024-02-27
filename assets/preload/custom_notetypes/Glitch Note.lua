local penis

function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Glitch Note' then --Check if the note on the chart is a Bullet Note
				setPropertyFromGroup('unspawnNotes', i, 'noAnimation', false); 
		end
	end
end