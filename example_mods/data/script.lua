function onUpdate(elapsed)

songPos = getSongPosition()
		local currentBeat = (songPos/5000)*(curBpm/60)
                local currentBeat2 = (songPos/500)*(curBpm/60)
                setCharacterY('dad',getCharacterY('dad') + (math.sin(currentBeat) * 0.9))
		noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX0 - 180*math.sin((currentBeat+4*0.25)*math.pi), 1)
		noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1 - 100*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
		noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2 - 270*math.sin((currentBeat+4*0.25)*math.pi), 0.8)
		noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3 - 110*math.sin((currentBeat+4*0.25)*math.pi), 0.2)

		noteTweenX(defaultOpponentStrumX0, 0, defaultOpponentStrumX0 + 90*math.sin((currentBeat+4*0.25)*math.pi), 0.9)
		noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 + 110*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
		noteTweenX(defaultOpponentStrumX2, 2, defaultOpponentStrumX2 + 230*math.sin((currentBeat+4*0.25)*math.pi), 0.1)
		noteTweenX(defaultOpponentStrumX3, 3, defaultOpponentStrumX3 + 140*math.sin((currentBeat+4*0.25)*math.pi), 0.6)

function opponentNoteHit(id, direction, noteType, isSustainNote)
setProperty('health', getProperty('health') - 1 * ((getProperty('health')/3)))
end

songPos = getSongPosition()
		local currentBeat = (songPos/5000)*(curBpm/60)
                local currentBeat2 = (songPos/500)*(curBpm/60)
                setCharacterY('dad',getCharacterY('dad') + (math.sin(currentBeat) * 0.9))
		noteTweenAngle(defaultPlayerStrumAngle0, 4, defaultPlayerStrumAngle0 - 180*math.sin((currentBeat+4*0.25)*math.pi), 1)
		noteTweenAngle(defaultPlayerStrumAngle1, 5, defaultPlayerStrumAngle1 - 100*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
		noteTweenAngle(defaultPlayerStrumAngle2, 6, defaultPlayerStrumAngle2 - 270*math.sin((currentBeat+4*0.25)*math.pi), 0.8)
		noteTweenAngle(defaultPlayerStrumX3, 7, defaultPlayerStrumAngle3 - 110*math.sin((currentBeat+4*0.25)*math.pi), 0.2)

		noteTweenAngle(defaultOpponentStrumAngle0, 0, defaultOpponentStrumAngle0 + 90*math.sin((currentBeat+4*0.25)*math.pi), 0.9)
		noteTweenAngle(defaultOpponentStrumAngle1, 1, defaultOpponentStrumAngle1 + 110*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
		noteTweenAngle(defaultOpponentStrumAngle2, 2, defaultOpponentStrumAngle2 + 230*math.sin((currentBeat+4*0.25)*math.pi), 0.1)
		noteTweenAngle(defaultOpponentStrumAngle3, 3, defaultOpponentStrumAngle3 + 140*math.sin((currentBeat+4*0.25)*math.pi), 0.6)
end
