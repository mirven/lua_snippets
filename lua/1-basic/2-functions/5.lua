function foo(...)
	local n = select('#', ...)
	
	print("n: "..n)
	
	for i=1,n do
		local arg = select(i, ...)
		print(arg)
	end 
end

foo(10) 		--> n: 1
				--> 10
				
foo(10, 20) 	--> n: 2
				--> 10
				--> 20
				
foo(10, 20, 30) --> n: 3
				--> 10
				--> 20
				--> 30