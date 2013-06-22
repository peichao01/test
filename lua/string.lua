a = "one string"
b = string.gsub(a, "one", "another")
print(a)
print(b)

page = [[
<html>
	<head>
		<title>An HTML Page</title>
	</head>
	<body>
		Lua
		[[a text between double brackets] ]
	</body>
</html>
]]

io.write(page)

print("10 + 1 = ", "10" + 1)
print("10 + 1")
print("hello" .. 1)

line = io.read()
n = tonumber(line)
if n == nil then
	error(tostring(line) .. " is not a valid number")
else
	print(n * 2)
end

print(tostring(10) == "10")
print(10 .. "" == "10")
