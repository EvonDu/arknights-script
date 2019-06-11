-- 加载核心
require("core/Config");
require("core/Touch");
require("core/Debug");
require("core/Common");

-- 判断分辨率
w,h = getScreenSize()
if w ~= 720 or h ~=1280 then
	dialog("仅支持分辨率:720*1280", 0)
	lua_exit();
end

-- 显示选项界面
yesorno,retuserui=showUI("ui.json");
if yesorno==0 then 
	lua_exit();
end

-- 任务执行提示
toast("执行任务:"..retuserui["mission-type"].."-"..retuserui["mission-level"]+1);

-- 等待主界面出现(height和width要反过来，因为是横屏)
Common:awitMainScreen()

-- 执行GT活动
if tonumber(retuserui["mission-type"]) == 0 then
	-- 导入模块
	local GT = require("modules/GT");
	-- 执行任务
	GT:mission(retuserui["mission-level"]+1);
end