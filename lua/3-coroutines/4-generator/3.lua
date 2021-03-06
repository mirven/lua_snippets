function fib(n, f)
	local i, j = 0, 1
	
	f(i)
	f(j)
	
	for c=3,n do
		f(i+j)
		i, j = j, i+j
	end
end

function generate_fibs(n)
	local co = coroutine.create(function() 
		return fib(n, coroutine.yield) 
	end)
	
	return function()
		local _, result = coroutine.resume(co)
		return result
	end
end


f = generate_fibs(10)

for i=1, 10 do
	print(f())
end