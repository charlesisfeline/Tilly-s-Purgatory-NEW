function onCreate()
	-- background shit
	makeLuaSprite('thearchy', 'thearchy', -600, -300);
	setScrollFactor('thearchy', 0, 0);
	addLuaSprite('thearchy', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end