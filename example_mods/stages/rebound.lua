function onCreate()
	-- background shit
	makeLuaSprite('rebound', 'rebound', -600, -300);
	setScrollFactor('rebound', 0, 0);
	addLuaSprite('rebound', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end