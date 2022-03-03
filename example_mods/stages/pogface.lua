function onCreate()
	-- background shit
	makeLuaSprite('pogface', 'pogface', -600, -300);
	setScrollFactor('pogface', 0, 0);
	addLuaSprite('pogface', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end