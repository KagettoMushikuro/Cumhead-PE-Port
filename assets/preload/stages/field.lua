function onCreate()
	-- background shit

  	makeLuaSprite('fondo2', 'cup/images/BG-00', -780, -460);
	setLuaSpriteScrollFactor('fondo2', 0.1, 0.1);
   scaleObject('fondo2', 3, 3)
	addLuaSprite('fondo2', false);

  	makeLuaSprite('fondo3', 'cup/images/BG-01', -660, -410);
	setLuaSpriteScrollFactor('fondo3', 0.4, 0.4);
   scaleObject('fondo3', 2.9, 2.9)
	addLuaSprite('fondo3', false);

   makeLuaSprite('fondo1', 'cup/images/Foreground', -800, -840);
	setLuaSpriteScrollFactor('fondo1', 1, 1);
   scaleObject('fondo1', 3.8, 3.8)
	addLuaSprite('fondo1', false);

   makeAnimatedLuaSprite('shit', 'cup/images/CUpheqdshid', -30, 40);
   addAnimationByPrefix('shit', 'idle', 'Cupheadshit_gif instance 1', 18, true)
   setObjectCamera('shit', 'camother');
   addLuaSprite('shit', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end