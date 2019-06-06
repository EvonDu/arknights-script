-- 定义类
local Common = {}

-- 等待主界面出现
function Common.awitMainScreen(touch, w, h)
	toast("等待主界面");
	local b = false
	while not b do
		x, y = findImageInRegionFuzzy("common/main.jpg", 40, 0, 0, w, h, 0)
		if x ~= -1 and y ~= -1 then
			toast("主界面登录成功");
			b = true -- 设置已找到
			touch.tip(x, y)
		else
			toast("未检测到主界面，3秒后重试……");
			mSleep(3000) --延迟3秒
		end
	end
end

-- 返回
return Common