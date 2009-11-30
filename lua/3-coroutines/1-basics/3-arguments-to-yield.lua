function foo(a)
	print("in foo.  a: "..a)
	local b, p = coroutine.yield(25, 50)
	print("b: "..b.." "..p)
	
	local b1, p1 = coroutine.yield(25, 50)
	print(b1, p1)
	return 50
end

co = coroutine.create(foo)

print(coroutine.status(co))						--> suspended

status, result = coroutine.resume(co, "dog")	--> in foo.  a: dog
print(status, result)							--> true	25

print(coroutine.status(co))						--> suspended

status, result = coroutine.resume(co, "cat", "pig")	--> b: cat
print(status, result)							--> true	50

status, result = coroutine.resume(co)	--> b: cat
print(status, result)							--> true	50

print(coroutine.status(co))						--> dead