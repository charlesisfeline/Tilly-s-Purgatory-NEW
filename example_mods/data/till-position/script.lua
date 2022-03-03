local floaty = 90
local tailscircle = 'circling' -- you'll use this to make the opponent hover up/down or in circles

function onUpdate()
	floaty = floaty+0.03

	if tailscircle == 'hovering' or tailscircle == 'circling' then
		setCharacterY('dad', getCharacterY('dad')+math.sin(floaty) * 1.3);
	end
	if tailscircle == 'circling' then
		setCharacterX('dad', getCharacterX('dad')+math.cos(floaty) * 1.3);
	end
end