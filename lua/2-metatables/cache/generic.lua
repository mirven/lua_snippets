function create_caching_function(f)
	local o = {}
	setmetatable(o, { 
		__index = function(t,k)			
			t[k] = f(k)
			return t[k]
		end,

		__call = function(t, k)
			return t[k]
		end
	})
	return o
end


function cube(x)
	print("cubing: "..x)
	return(x*x*x)
end

print(cube(3))
print(cube(3))

cube = create_caching_function(cube)



print(cube(4))
print(cube(4))
print(cube(4))
print(cube(4))

function double(x)
	print("doubling: "..x)
	return(2*x)
end

double = create_caching_function(double)

print(double(11.1))
print(double(11.1))
print(double(11.1))
print(double(11.1))
print(double(11.1))

print(double(21.1))
print(double(21.1))
print(double(21.1))
print(double(21.1))
print(double(21.1))