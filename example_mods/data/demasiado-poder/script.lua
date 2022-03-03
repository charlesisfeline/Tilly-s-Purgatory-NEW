function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health- 0.01);
    end
end

function onUpdate(elapsed)

  if curStep >= 0 then

    songPos = getSongPosition()

    local currentBeat = (songPos/1000)*(bpm/80)

    doTweenY(dadTweenY, 'dad', 300-110*math.sin((currentBeat*0.25)*math.pi),0.001)

  end

end

function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'BF-DIES'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'creepy_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOverCreepy'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEndOG'); --put in mods/music/
end
