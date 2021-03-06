function onCreate()
    setProperty('gf.visible', false);

    makeAnimatedLuaSprite('intro', 'cup/images/the_thing2.0', -20, -10);
    addAnimationByPrefix('intro', 'idle', 'BOO instance 1', 18, false)
    scaleObject('intro', 1.05, 1.05);
    setObjectCamera('intro', 'other');
    addLuaSprite('intro', false);

    makeAnimatedLuaSprite('hola', 'cup/images/ready_wallop', -440, -20);
    addAnimationByPrefix('hola', 'idle', 'Ready? WALLOP!', 24, false)
    scaleObject('hola', 0.9, 0.9);
    setObjectCamera('hola', 'other');
    addLuaSprite('hola', false);

end

function onStepHit()
	if curStep == 15 then
      removeLuaSprite('hola', false);
      removeLuaSprite('intro', false);
 end
end

function onStartCountdown()
    runTimer('wait', 1.5, 1);
    return Function_Continue;
end

function onCountdownTick(counter)
    if counter == 0 then
        playSound('0', 1);
    end
    if counter == 1 then
        setProperty('countdownReady.x', 9000);
    end
    if counter == 2 then
        setProperty('countdownSet.x', 9000);
    end
    if counter == 3 then
        setProperty('countdownGo.x', 9000);
    end
end

function onTimerCompleted(tag)

	if tag == 'wait' then
        setProperty('intro.alpha', 0);
    end
end