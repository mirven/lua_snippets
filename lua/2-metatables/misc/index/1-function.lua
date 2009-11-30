
t = {}

mt = { 
	__index = function(t, k) 
		print("index")
		return k.." not found"
	end
}

setmetatable(t, mt)
print(t.foo)
print(t.foo)