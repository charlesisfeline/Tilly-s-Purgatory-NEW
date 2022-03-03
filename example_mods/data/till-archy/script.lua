function opponentNoteHit()
    triggerEvent('Screen Shake', '0.1, 0.01', '0.1, 0.01');
    end

    
function onUpdate(elapsed)
    if curStep >= 0 then
      songPos = getSongPosition()
      local currentBeat = (songPos/1000)*(bpm/200)
      doTweenY(dadTweenY, 'dad', 290-130*math.sin((currentBeat*0.25)*math.pi),0.001)
    end
  end
  function opponentNoteHit(id, direction, noteType, isSustainNote)
    cameraSetTarget('dad')
    setProperty('health', getProperty('health') - 0.000025)
       end
   function goodNoteHit()
       setProperty('health', getProperty('health') + 0.03)
   end
       function noteMiss(direction)
           cameraSetTarget('bf')
           setProperty('health', getProperty('health') + 0.0025)
           end
           function noteMissPress(direction)
           setProperty('health', getProperty('health') + 0.0025)
           end
           function onUpdate(elapsed)  
            songPos = getSongPosition()
            local currentBeat = (songPos / 1000)*(curBpm/300)
            local currentBeat2 = (songPos / 100)*(curBpm/300)
            if curStep > 35 and curStep < 90000 then
 
    
              noteTweenAngle('defaultPlayerStrum0', 4, 0 + 360 * math.sin((currentBeat+7 *0.25) * math.pi), 0.001)
              noteTweenAngle('defaultPlayerStrum1', 5, 0 + 360 * math.sin((currentBeat+7 *0.25) * math.pi), 0.001)
              noteTweenAngle('defaultPlayerStrum2', 6, 0 + 360 * math.sin((currentBeat+7 *0.25) * math.pi), 0.001)
              noteTweenAngle('defaultPlayerStrum3', 7, 0 + 360 * math.sin((currentBeat+7 *0.25) * math.pi), 0.001)

              
    
		noteTweenAngle('defaultPlayerRStrum0', 0, 0 + 360 * math.sin((currentBeat+7 *0.25) * math.pi), 0.001)
		noteTweenAngle('defaultPlayerRStrum1', 1, 0 + 360 * math.sin((currentBeat+7 *0.25) * math.pi), 0.001)
		noteTweenAngle('defaultPlayerRStrum2', 2, 0 + 360 * math.sin((currentBeat+7 *0.25) * math.pi), 0.001)
		noteTweenAngle('defaultPlayerRStrum3', 3, 0 + 360 * math.sin((currentBeat+7 *0.25) * math.pi), 0.001)

    noteTweenY('defaultPlayerStrumY0', 4, defaultPlayerStrumY0 + 100 * math.cos((currentBeat+4 *0.25) * math.pi), 0.01)
    noteTweenY('defaultPlayerStrumY1', 5, defaultPlayerStrumY1 + 50 * math.cos((currentBeat+5 *0.25) * math.pi), 0.01)
    noteTweenY('defaultPlayerStrumY2', 6, defaultPlayerStrumY2 + 50 * math.cos((currentBeat+6 *0.25) * math.pi), 0.01)
    noteTweenY('defaultPlayerStrumY3', 7, defaultPlayerStrumY3 + 100 * math.cos((currentBeat+7 *0.25) * math.pi), 0.01)
    noteTweenY('defaultPlayerRStrumY0', 0, 'defaultPlayerSStrumY0' - 100 * math.cos((currentBeat+4 *0.25) * math.pi), 0.01)
    noteTweenY('defaultPlayerRStrumY1', 1, 'defaultPlayerSStrumY1' - 50 * math.cos((currentBeat+5 *0.25) * math.pi), 0.01)
    noteTweenY('defaultPlayerRStrumY2', 2, 'defaultPlayerSStrumY2' - 50 * math.cos((currentBeat+6 *0.25) * math.pi), 0.01)
    noteTweenY('defaultPlayerRStrumY3', 3, 'defaultPlayerSStrumY3' - 100 * math.cos((currentBeat+7 *0.25) * math.pi), 0.01)
            end
        end 
        function onBeatHit()
          if curBeat < 50000 then
          
            if curBeat % 2 == 0 then
                    
              setProperty('camHUD.angle',1*-5)
              brj = 1;
            else
              brj = -1;
                    
         
            end
         
                      
            setProperty('camHUD.angle',1*5)
          
            doTweenAngle('turn', 'camHUD', 1, stepCrochet*0.002, 'quadinOut')
            doTweenX('tuin', 'camHUD', -1*8, crochet*0.001, 'quadinOut')
        
            
          end
            
        end
        