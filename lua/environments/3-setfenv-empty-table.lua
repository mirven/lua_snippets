function foo()
	print "in foo"
end

foo()

setfenv(foo, { })

foo()
