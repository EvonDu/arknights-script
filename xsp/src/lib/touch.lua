-- 定义类
local touch = {}

-- 点击某个坐标点
function touch.tip(x, y)
	local width,height = getScreenSize()
	local id = createHUD()---创建HUD用于显示点击位置圆点
	local s = height * 0.018 --用于按屏幕大小缩放显示圆点大小
	touchDown(1, x, y)
	showHUD(id,"",1,"0xffff0000","lib/d.png",0,x-s,y-s,s*2,s*2)---d.png为圆点图片，可以用PS做一个
	mSleep(100+math.random(0,100))
	touchUp(1,x,y)
	mSleep(1000)
	hideHUD(id)
	mSleep(100)--要留点时间让红点消失，否则有可能影响找图找色
end

-- 返回
return touch