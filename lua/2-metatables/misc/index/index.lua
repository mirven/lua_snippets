t = {}
mt = { 
	__index = function(t, k) 
		return k.." not found"
	end
}
setmetatable(t, mt)
print(t.foo)


t = { foo = "found" }
mt = { 
	__index = function(t, k) 
		return k.." not found"
	end
}
setmetatable(t, mt)
print(t.foo)



t = {}
mt = { 
	__index = function(t, k) 
		t[k] = "found"
		return k.." not found"
	end
}
setmetatable(t, mt)
print(t.foo)
print(t.foo)