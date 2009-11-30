setmetatable(_G, {
	__index = function(t, k) 
		error("Trying to access undefined: "..k)
	end
})

foo = "foo"
print(foo)	--> foo
-- print(foo2)	--> ERROR!

if rawget(_G, "foo2") then
	print "foo2"
end