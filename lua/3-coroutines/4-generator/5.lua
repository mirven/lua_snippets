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
	return coroutine.wrap(function() 
		fib(10, coroutine.yield) 
	end)
end

for f in generate_fibs(5) do
	print(f)
end