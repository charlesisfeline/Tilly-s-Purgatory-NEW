function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is a Ball Notes
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Bazooka Notes' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'BAZOOKANOTE_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', 0.6); --Change amount of health to take when you miss like a moron
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Bazooka Notes' then
                playSound('Shoot', 1)
                cameraShake('game', '0.01', '0.01');

		local animToPlay = '';
		if noteData == 0 then
			animToPlay = 'hey';
		elseif noteData == 1 then
			animToPlay = 'hey';
		elseif noteData == 2 then
			animToPlay = 'hey';
		elseif noteData == 3 then
			animToPlay = 'hey';
		end
		characterPlayAnim('dad', animToPlay, true);
		setProperty('dad.specialAnim', true);
	end
end

local healthDrain = 0;
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Bazooka Notes' then
                playSound('Shoot', 1)

		setProperty('boyfriend.specialAnim', true);

		local animToPlay = '';
		if noteData == 0 then
			animToPlay = 'shoot';
		elseif noteData == 1 then
			animToPlay = 'shoot';
		elseif noteData == 2 then
			animToPlay = 'shoot';
		elseif noteData == 3 then
			animToPlay = 'shoot';
		end
		characterPlayAnim('dad', animToPlay, true);
		setProperty('dad.specialAnim', true);

		-- health loss | || || |_
		--setProperty('health', getProperty('health') - 0.6);
		healthDrain = healthDrain + 0.6;
	end
end

function onUpdate(elapsed)
	if healthDrain > 0.1 then
		healthDrain = healthDrain - 0.2 * elapsed;
		setProperty('health', getProperty('health') - 0.2 * elapsed);
		if healthDrain < 0 then
			healthDrain = 0;
		end
	end
end