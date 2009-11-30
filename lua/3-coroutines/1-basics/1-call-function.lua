function foo()
	print "in foo"
end

co = coroutine.create(foo)

print(coroutine.status(co))	--> suspended

coroutine.resume(co)		--> in foo

print(coroutine.status(co))	--> dead