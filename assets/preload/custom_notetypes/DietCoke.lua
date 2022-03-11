function onCreate()

	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'DietCoke' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'dietcoke_note'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
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
	if noteType == 'DietCoke' then
		makeAnimatedLuaSprite('soda', 'dietsoda_test', -100, -80); -- static layer
		setScrollFactor('soda', 0, 0);
		addAnimationByPrefix('soda', 'anim', 'soda', 24, false);
		objectPlayAnimation('soda', 'anim');
		scaleObject('soda', 0.735, 0.735);

		addLuaSprite('soda', true);
		objectPlayAnimation('soda', 'anim');
		runTimer('sodanim', 2, 1)

		onTimerCompleted('sodanim', 1, 0);
			removeLuaSprite('sodanim', false);
		end
	end
end

-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Instakill Note' then
		-- put something here if you want
	end
end