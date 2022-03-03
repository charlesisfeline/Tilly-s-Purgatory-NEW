function onCreate()
	-- background shit
	makeLuaSprite('weirdo', 'weirdo', -600, -300);
	setScrollFactor('weirdo', 0.3, 0.3);
	addLuaSprite('weirdo', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end