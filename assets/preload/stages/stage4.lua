function onCreate()
	makeLuaSprite('stage', 'stage2', -600, -300);
	setScrollFactor('stage', 0.9, 0.9);

    makeAnimatedLuaSprite('stageChars', 'stageChars4', -230, -186);
	setScrollFactor('stageChars', 0.9, 0.9);
	addAnimationByPrefix('stageChars', 'idle', 'Bottom Level Boppers', 24, false);

	-- objectPlayAnimation('stageChars', 'idle');

	addLuaSprite('stage', false);
	addLuaSprite('stageChars', false);	
end

function onBeatHit()
	objectPlayAnimation('stageChars', 'idle');
end