function square(x)
	return(x*x)
end

_square = square

square = {}
setmetatable(square, {
	__index = function(t,k)
		print("computing")
		return _square(k)
	end
})

print(square[2])
print(square[2])
print(square[2])