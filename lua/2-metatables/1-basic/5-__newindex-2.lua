t = {}

mt = {}

function mt.__newindex(table, key, value)
	print("setting "..key.." to "..value)
	rawset(table, key, value)	-- use rawset() to prevent stack overflow
end

setmetatable(t, mt)

t.foo = "bar"	--> setting foo to bar

print(t.foo)	--> bar