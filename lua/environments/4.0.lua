function foo()
	x = 25
	print("in foo", x)
end

print("before foo", x)		-->	before foo	nil
foo()						--> in foo	25
print("after foo", x)		-->	after foo	25