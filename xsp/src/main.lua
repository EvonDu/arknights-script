-- 加载核心
require("core/Config");
require("core/Touch");
require("core/Debug");
require("core/Common");

-- 导入模块
local GT = require("modules/GT");

-- 调用IU
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