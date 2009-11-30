function fib(n, f)
	local i, j = 0, 1
	
	f(i)
	f(j)
	
	for c=3,n do
		f(i+j)
		i, j = j, i+j
	end
end

co = coroutine.create(fib)

_, result = coroutine.resume(co, 10, coroutine.yield)

while result do
	print(result)
	_, result = coroutine.resume(co)
end