polyline = {
	color = "blue",
	thickness = 2,
	npoints = 4,
	{
		x = 0,
		y = 0
	},
	{
		x = -10,
		y = 0
	},
	{
		x = -10,
		y = 1
	},
	{
		x = 0,
		y = 1
	}
}
print(polyline["color"])
print(polyline[1].x, polyline[1].y)
