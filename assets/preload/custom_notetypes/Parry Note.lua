function onCreate()
  precacheImage('notes/Parry_assets')
  precacheImage('notes/NOTE_parry')

	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is a Static Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Parry Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'notes/NOTE_parry'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'notes/Parry_assets');
end

	if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
	    setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
			end
		end
	end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Parry Note' then
      --playSound('shoot', 4);
end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Parry Note' then
		--objectPlayAnimation('card', 'parrypopout', true);
      characterPlayAnim('bf', 'attack', true);
		playSound('parry', 4);
end
end