function fib(n, f)
	local i, j = 0, 1
	
	f(i)
	f(j)
	
	for c=3,n do
		f(i+j)
		i, j = j, i+j
	end
end

fib(10, print)