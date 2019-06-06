-- 加载核心
require("core/Config");
require("core/Touch");
require("core/Debug");
require("core/Common");

-- 导入模块
local GT = require("modules/GT");

-- 调用IU
--yesorno,retuserui=showUI("ui.json");
-- 判断选择值
--if yesorno==0 then        
--  toast("退出脚本运行");
--  lua_exit();
--end

-- 等待主界面出现(height和width要反过来，因为是横屏)
Common:awitMainScreen()

-- 执行GT活动
GT:mission(6);