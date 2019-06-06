-- 加载类
local touch = require("lib/touch");
local common = require("core/common");
local gt = require("modules/gt");

-- 调用IU
--yesorno,retuserui=showUI("ui.json");
-- 判断选择值
--if yesorno==0 then        
--  toast("退出脚本运行");
--  lua_exit();
--end

-- 初始化
init(0, 1)

-- 获取屏幕分辨率
width,height = getScreenSize();
toast("屏幕分辨率:"..width.."*"..height);

-- 等待主界面出现(height和width要反过来，因为是横屏)
common:awitMainScreen(touch, height, width);

-- 进入任务目录
--gt:toIndex(height, width);

-- 脚本结束
mSleep(5000); --延迟5秒
toast("退出脚本运行");