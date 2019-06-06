-- 定义类
local Gt = {}

-- 进入任务目录
function Gt.toIndex(t, w, h)
	toast("点击坐标");
	mSleep(1000) --延迟5秒
	init("0", 1); --以当前应用 Home 键在右边初始化
	touchDown(1, 752, 1933);            --那么单击该图片
	mSleep(200) --延迟5秒
	touchUp(1, 752, 1933);
end

-- 进入任务目录
function Gt.toIndex2(t, w, h)
	x, y = findImageInRegionFuzzy("gt/index.jpg", 60, 0, 0, w, h, 0);
	toast(x.."*"..y);
	if x ~= -1 and y ~= -1 then
		touchDown(1, x, y);
		mSleep(200) --延迟5秒
		touchUp(1, x, y);
	else
		dialog("未找到符合条件的坐标！",0);
	end
end

-- 返回
return Gt