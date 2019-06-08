-- 定义类
local GT = {}

-- 进入活动页面
function GT.toIndex(args)
	-- 尝试进入活动页面
	x, y = findMultiColorInRegionFuzzy(0x676767,"-28|8|0x625a51,-33|31|0xdcbbb3,-25|42|0x85746c,-3|43|0x4e4f48,8|40|0xcecece,8|26|0x2e2e2e,4|19|0x373737,-7|19|0x535b64,-20|40|0xc4cbcb,-19|65|0x435465,-2|77|0xffffff,38|76|0x323236,37|50|0x888890,13|35|0xc2c2c2,-17|19|0xa7a297,-27|26|0xd7b6a6,-32|62|0xd4cccc,-20|84|0xcccbcc,30|84|0x83837f", 95, 0, 0, Config.windows.width, Config.windows.height, 0, 0)
	if x > -1 then
		Touch:Click(x,y)
		mSleep(5000)
	else
		return false
	end
	-- 判断是否活动页面
	x, y = findMultiColorInRegionFuzzy(0xcba331,"-11|-27|0xb99127,11|-39|0xaf8a20,32|-20|0xcbaa30,19|3|0xb38425,67|-20|0x40382a,55|20|0x564636,-4|37|0x372f27,-37|12|0x453e2d,-46|-21|0x695841,-39|-44|0x544737,11|-100|0xac7e32,18|-110|0xc09c42,43|-39|0xc69f2d,16|-58|0xcaa12f,-19|-43|0xc59c2b,-18|-19|0xc0962d,-7|20|0x9f6a1d,20|25|0xb4823f,40|9|0xc9a930", 95, 0, 0, Config.windows.width, Config.windows.height, 0, 0)
	if x > -1 then
		return true
	else
		return false
	end
end

-- 进入任务列表
function GT.toList(args)
	-- 尝试进入任务列表页(多次)
	while true do
		x, y = findMultiColorInRegionFuzzy(0x73737a,"-22|-20|0x62726a,37|-19|0x798189,-51|-34|0x414947,50|-35|0x3b393c,-61|3|0xc3c3bc,55|-10|0xd4d3d4,-47|23|0xecd7c6,51|16|0xdad6d2,-37|44|0x717b8a,63|40|0x5b5b5f,-55|49|0x556675,77|52|0x515150,24|61|0xececec,-20|54|0x777674,170|38|0xd5cdbf,219|39|0xcbc4b5,121|44|0xc3b59a,156|68|0xc0b9a8,186|64|0xd6cec1", 95, 0, 0, Config.windows.width, Config.windows.height, 0, 0)
		if x > -1 then
			Touch:Click(x,y)
			mSleep(5000)
			break
		end
	end
	-- 判断是否未任务列表页
	x, y = findMultiColorInRegionFuzzy(0x757575,"-14|5|0xb9b9b0,-37|26|0xbdb4a4,-22|39|0x9d9d8d,-1|33|0xa9a998,49|2|0xd1cab2,25|-35|0xe0d8af,-15|-21|0xd4bb84,-57|25|0x616152,-59|61|0x98987f,-31|73|0xa2a250,16|58|0xebdba3,40|23|0x464636,51|9|0xc5b4a4,-29|-24|0xb79c6a,-63|6|0x969648,-89|48|0x6e6e5e,-84|62|0x898970,-49|84|0xa29e85,-13|90|0xfcecbb", 95, 0, 0, Config.windows.width, Config.windows.height, 0, 0)
	if x > -1 then
		return true
	else
		return false
	end
end

-- 选择任务
function GT.select(args, num)
	-- 选择任务
	x, y = -1, -1
	if num == 6 then
		x, y = findMultiColorInRegionFuzzy(0x00b0fa,"89|-11|0x343434,88|-12|0x3e3e3e,85|-12|0x333333,83|-11|0x343434,81|-9|0x353535,81|-7|0x424242,80|-4|0x333333,80|-2|0x333333,80|1|0x333333,81|3|0x333333,82|5|0x393939,85|5|0x797979,88|4|0x4f4f4f,90|2|0x343434,89|-1|0x3d3d3d,89|-3|0x393939,87|-5|0x757575,85|-5|0x6c6c6c,82|-3|0x494949", 95, 0, 0, Config.windows.width, Config.windows.height, 0, 0)
	elseif num == 5 then
		x, y = findMultiColorInRegionFuzzy(0x00b3fd,"24|-6|0xf2f2f2,36|-4|0x333333,49|-3|0xffffff,60|-3|0x4c4c4c,67|-3|0xffffff,80|-1|0x8d8d8d,82|-1|0x939393,89|-8|0xa4a4a4,83|-8|0x898989,84|-4|0xc2c2c2,86|-1|0x7f7f7f,89|0|0x333333,90|3|0x414141,85|8|0x333333,80|6|0x666666,88|-10|0x424242,80|-9|0x757575,81|-2|0x333333,82|-6|0x7a7a7a", 95, 0, 0, Config.windows.width, Config.windows.height, 0, 0)
	elseif num == 4 then
		x, y = findMultiColorInRegionFuzzy(0x00b3fd,"21|-4|0xfdfdfd,29|-4|0xfafafa,38|-4|0x515151,46|-3|0xffffff,53|-1|0xffffff,58|7|0xcecece,68|9|0xffffff,74|7|0xffffff,88|-8|0x333333,85|-5|0x333333,82|-1|0x3d3d3d,79|3|0x5b5b5b,81|4|0x333333,85|4|0x333333,88|4|0x333333,90|4|0x333333,91|4|0x333333,88|7|0x3a3a3a,88|10|0x3a3a3a", 95, 0, 0, Config.windows.width, Config.windows.height, 0, 0)
	elseif num == 3 then
		x, y = findMultiColorInRegionFuzzy(0x00b3fd,"22|-5|0xf9f9f9,35|-6|0x333333,50|-6|0xffffff,58|0|0x333333,65|-5|0xffffff,74|-3|0xffffff,79|-8|0x333333,81|-9|0x333333,84|-9|0x333333,87|-8|0x333333,87|-6|0x333333,86|-2|0x333333,82|0|0x373737,83|0|0x333333,87|2|0x393939,87|6|0x393939,84|8|0x333333,79|8|0x363636,80|2|0xffffff", 95, 0, 0, Config.windows.width, Config.windows.height, 0, 0)
	elseif num == 2 then
		x, y = findMultiColorInRegionFuzzy(0x00b0fa,"22|-6|0xfcfcfc,37|-4|0xffffff,59|-4|0xffffff,65|-2|0xffffff,77|-8|0x333333,81|-8|0x333333,84|-7|0x353535,85|-3|0x353535,83|0|0x353535,80|5|0x333333,76|8|0x393939,75|10|0x3e3e3e,79|10|0x333333,84|10|0x333333,86|9|0x333333,77|-3|0xffffff,78|-1|0xffffff,76|3|0xffffff,76|4|0xffffff", 95, 0, 0, Config.windows.width, Config.windows.height, 0, 0)
	elseif num == 1 then
		x, y = findMultiColorInRegionFuzzy(0x00b2fc,"24|-9|0xfcfcfc,34|-9|0xffffff,51|-9|0xeeeeee,70|-9|0xffffff,82|-9|0x333333,85|-10|0x333333,85|-7|0x333333,85|0|0x333333,85|5|0x333333,84|7|0x333333,85|8|0x333333,80|8|0x474747,89|7|0x333333,88|7|0x333333,82|7|0x333333,78|-3|0xffffff,80|-5|0xffffff,90|-8|0xffffff,90|3|0xffffff", 95, 0, 0, Config.windows.width, Config.windows.height, 0, 0)
	else
		return false
	end
	if x > -1 then
		Touch:Click(x,y)
		mSleep(5000)
	end
	return true
end

-- 执行任务
function GT.mission(args, num)
	-- 进入活动页面
	Debug:show("进入活动页面")
	if not GT.toIndex() then
		dialog("进入活动页面失败", 0)
		return false
	end
	-- 进入任务列表
	Debug:show("进入任务列表")
	if not GT.toList() then
		dialog("进入任务列表失败", 0)
		return false
	end
	-- 选择任务 
	Debug:show("进入任务列表")
	if not GT.select(o, num) then
		dialog("不支持任务：GT-"..num, 0)
		return false
	end
	-- 开始行动
	while true do
		Debug:show("开始任务")
		Common.actionMission()
		Common.awitMissionCompolate()
	end
end

-- 返回
return GT