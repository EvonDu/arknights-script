-- 定义类
Common = {}

-- 等待主界面出现
function Common.awitMainScreen(args)
	-- 提示
	Debug:show("等待进入主界面")
	-- 循环
	while true do
		x, y = findMultiColorInRegionFuzzy(0xffffff,"16|4|0xffffff,16|8|0xffffff,17|15|0xffffff,11|22|0xffffff,3|22|0xffffff,-1|16|0xffffff,-4|7|0xffffff,-1|2|0xffffff,6|7|0x86857f,17|3|0xffffff,9|14|0x94928b,6|14|0x93928b,21|8|0xffffff,10|0|0xffffff,1|3|0xffffff,-5|9|0xffffff,21|14|0xffffff,11|23|0xffffff,1|22|0xffffff", 95, 0, 0, Config.windows.width, Config.windows.height, 0, 0)
		if x ~= -1 and y ~= -1 then
			break;
		else
			toast("未检测到主界面，3秒后重试……");
			mSleep(3000);
		end
	end
end

-- 等待任务完成
function Common.awitMissionCompolate(args)
	-- 提示
	Debug:show("等待任务完成")
	-- 循环
	while true do
		x, y = findMultiColorInRegionFuzzy(0xe9ca1b,"8|33|0xf4ce05,13|9|0xf6d408,-9|32|0x9e7a13,-26|9|0xc1a313,21|10|0x886302,50|16|0xf9d906,43|34|0xfcd906,-15|35|0xd4b521,130|-5|0x0180a1,157|-4|0x494949,173|-4|0x4b4b4b,181|14|0x8ea8af,162|25|0xc3fafe,126|23|0x264a4b,118|5|0x5ae8fc,173|24|0x72d0ea,152|27|0x04b3f9,-7|37|0x5b3d0a,-21|21|0x261a13", 95, 0, 0, Config.windows.width, Config.windows.height, 0, 0)
		if x > -1 then
			break;
		else
			mSleep(10000);
		end
	end
	-- 点击结算
	Touch:Click(1279/2, 719/2)
	mSleep(6000)
end

-- 开启代理指挥
function Common.openAutoBattle(args)
	-- 判断是否未开启
	x, y = findMultiColorInRegionFuzzy(0x171717,"20|2|0x191919,31|-1|0x1a1a1a,52|0|0x1e1e1e,64|0|0x1f1f1f,71|-1|0xa8a8a8,76|-3|0xaaaaaa,84|-2|0xaaaaaa,95|-4|0x222222,116|-6|0x343434,123|-2|0xaaaaaa,129|0|0x242424,148|0|0x515151,162|0|0x242424,159|-6|0x242424,134|-8|0x7b7b7b,109|-8|0xaaaaaa,94|-2|0x222222,88|6|0x212121,76|5|0xaaaaaa", 95, 0, 0, Config.windows.width, Config.windows.height, 0, 0)
	if x > -1 then
		Touch:Click(x, y)
		mSleep(1000)
	end
	-- 判断开启成功
	x, y = findMultiColorInRegionFuzzy(0xffffff,"29|4|0xa3a3a3,43|7|0xa4a4a4,57|6|0xa5a5a5,72|6|0xa5a5a5,80|6|0xa6a6a6,95|5|0xa7a7a7,105|5|0xa7a7a7,131|6|0xa7a7a7,151|6|0xa6a6a6,162|5|0x858787,142|-2|0x8c8c8c,132|-1|0x7b7d7d,119|-1|0xa6a6a6,102|-1|0x979898,76|-4|0x5e6060,70|-4|0xa5a5a5,65|15|0xa5a5a5,83|11|0xa6a6a6,93|11|0xa6a6a6", 95, 0, 0, Config.windows.width, Config.windows.height, 0, 0)
	if x > -1 then
		return true
	else
		return false
	end
end

-- 开始行动
function Common.actionMission(args)
	-- 开启代力指挥
	Common.openAutoBattle()
	-- 点击开始任务
	x, y = findMultiColorInRegionFuzzy(0xffffff,"6|2|0x6194b6,8|0|0x234f66,20|0|0x98b9c3,20|-3|0xc6dbe3,25|-2|0xffffff,25|-1|0xbdd5df,27|4|0xafcad4,29|7|0x97abb7,35|7|0x0070a1,36|1|0xa6d2e2,46|-4|0x006a9c,53|-5|0x016c9f,62|3|0x146c97,75|8|0xc2dae5,75|-4|0xeef1f4,46|-12|0x0084b7,37|-12|0x0083bd,23|-8|0xe9f1fa,4|-8|0xbbdfe8", 95, 0, 0, Config.windows.width, Config.windows.height, 0, 0)
	if x > -1 then
		Touch:Click(x, y)
		mSleep(3000)
	end
	-- 确认开始行动
	x, y = findMultiColorInRegionFuzzy(0x4b0900,"-19|-24|0xffffff,29|-16|0xffffff,-14|30|0xffffff,34|26|0xffffff,2|-54|0x4b0901,-3|50|0x4c0a02,-44|0|0xfffff6,48|7|0x8d2a00,-1|-26|0x4b0901,-4|36|0x4b0901,-26|0|0x601600,29|4|0x641a01,-21|-23|0xfbfbfb,16|-24|0xfffefe,-15|35|0xffffff,33|34|0xffffff,-29|36|0x631901,50|40|0x902d00,-3|-53|0x4b0901", 95, 0, 0, Config.windows.width, Config.windows.height, 0, 0)
	if x > -1 then
		Touch:Click(x, y)
		mSleep(3000)
		return true
	end
	return false
end