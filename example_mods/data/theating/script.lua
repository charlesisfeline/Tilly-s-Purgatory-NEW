function onUpdate(elapsed)

songPos = getSongPosition()
		local currentBeat = (songPos/5000)*(curBpm/60)
                local currentBeat2 = (songPos/500)*(curBpm/60)
                setCharacterY('dad',getCharacterY('dad') + (math.sin(currentBeat) * 0.9))
end