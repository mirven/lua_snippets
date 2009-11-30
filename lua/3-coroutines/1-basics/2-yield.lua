function foo()
	print "in foo"
	coroutine.yield(25)
	return 50
end

co = coroutine.create(foo)

print(coroutine.status(co))				--> suspended

status, result = coroutine.resume(co)	--> in foo
print(status, result)					--> true	25

print(coroutine.status(co))				--> suspended

status, result = coroutine.resume(co)
print(status, result)					--> true	50

print(coroutine.status(co))				--> dead