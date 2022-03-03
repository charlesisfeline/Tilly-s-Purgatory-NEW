function onCreate()
	-- background shit
	makeLuaSprite('opposition', 'opposition', -600, -300);
	setScrollFactor('opposition', 0, 0);
	addLuaSprite('opposition', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end