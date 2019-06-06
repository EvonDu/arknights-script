Config = {
	windows = {
		width = 0,
		height = 0
	}
}

-- 初始化成横屏幕，所以高和宽会调换
init("0", 1)
Config.windows.height,Config.windows.width = getScreenSize()