t = {}

mt = {}

function mt.__newindex(table, key, value)
	print("setting "..key.." to "..value)
end

setmetatable(t, mt)

t.foo = "bar"	--> setting foo to bar

print(t.foo)	--> nil