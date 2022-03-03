function onCreate()
	-- background shit
	makeLuaSprite('toomuch', 'toomuch', -600, -300);
	setScrollFactor('toomuch', 0.9, 0.9);
	addLuaSprite('toomuch', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end