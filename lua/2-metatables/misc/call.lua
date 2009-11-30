t = {}
mt = {
	__call = function(t,x)
		print(t.i * x)
	end
}
setmetatable(t, mt)
t.i = 3
t(10)