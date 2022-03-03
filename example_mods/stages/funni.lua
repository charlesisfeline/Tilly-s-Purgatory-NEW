function onCreate()
	-- background shit
	makeLuaSprite('funni', 'funni', -600, -300);
	setScrollFactor('funni', 0, 0);
	addLuaSprite('funni', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end