function foo()
	print "hello"
end

print(type(10))								--> number
print(type(3.14))							--> number
print(type("hello world"))					--> string
print(type(foo))							--> function
print(type(nil))							--> nil
print(type(false))							--> boolean
print(type(4 == 2+2))						--> boolean
print(type({ name = "Marcus", age = 34 }))	--> table