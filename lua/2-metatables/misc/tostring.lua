t = { foo = "foo", bar = "bar" }

print(t)

mt = {
	__tostring = function(t)
		return t.foo.."-"..t.bar
	end
}
setmetatable(t, mt)

print(t)
