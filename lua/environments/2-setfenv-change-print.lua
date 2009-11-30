function foo()
	print "in foo"
	print(getfenv(1))
end

setfenv(foo, {
	print = print,
	-- print = function(str) 
	-- 	print(str..str) 
	-- end,
	getfenv = getfenv
})

foo()

print "hi"