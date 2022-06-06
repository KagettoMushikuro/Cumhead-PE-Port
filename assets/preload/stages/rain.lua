function onCreate()
	-- background shit

   makeLuaSprite('fondo2', 'cup/images/angry/CH-RN-00',  -780, -460);
   setLuaSpriteScrollFactor('fondo2', 0.1, 0.1);
   scaleObject('fondo2', 3, 3)
   addLuaSprite('fondo2', false);
	
   makeLuaSprite('fondo3', 'cup/images/angry/CH-RN-01', -450, -400);
   setLuaSpriteScrollFactor('fondo3', 0.4, 0.4);
   scaleObject('fondo3', 2.9, 2.9)
   addLuaSprite('fondo3', false);

   makeLuaSprite('fondo1', 'cup/images/angry/CH-RN-02', -800, -840);
   setLuaSpriteScrollFactor('fondo1', 1, 1);
   scaleObject('fondo1', 3.8, 3.8)
   addLuaSprite('fondo1', false);
	
   makeAnimatedLuaSprite('lluvia', 'cup/images/angry/NewRAINLayer', 0, -10);
   addAnimationByPrefix('lluvia', 'idle', 'RainFirstlayer instance 1', 18, true);
   setLuaSpriteScrollFactor('lluvia', 1, 1);
   setObjectCamera('lluvia', 'other');
   scaleObject('lluvia', 1.8, 1.8)
   addLuaSprite('lluvia', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end