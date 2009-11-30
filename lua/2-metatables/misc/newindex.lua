t = {}
mt = {
	__newindex = function(t,k,v)
		print(k.." not found")
		rawset(t, k, v)
	end
}
setmetatable(t, mt)
t.foo = "bar"
t.foo = "bar"
