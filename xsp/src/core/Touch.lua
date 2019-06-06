-- 定义类
Touch = {}

-- 点击进行点击
function Touch.Click(o, x, y)
	touchDown(1, x, y)
	mSleep(100+math.random(0,100))
	touchUp(1, x+math.random(0,10), y+math.random(0,10))
end