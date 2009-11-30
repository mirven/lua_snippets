function foo()
	print "hello"
end

foo()

setfenv(foo, { print = function(str) print(str..str) end })

foo()

print("hi")