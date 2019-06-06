-- 定义类
Debug = {
	id = createHUD(),
	x = 0,
	y = 75,
	size = 18,
	color = "0xffff0000",
	bg = "0xffffffff",
	pos = 0,
	width = 200,
	height = 75
}

function Debug.show(args,text)
	showHUD(
		Debug.id,
		text,
		Debug.size,
		Debug.color,
		Debug.bg,
		Debug.pos,
		Debug.x,
		Debug.y,
		Debug.width,
		Debug.height
	)
end