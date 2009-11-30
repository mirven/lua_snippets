Person = {}

person_mt = { __index = Person }

function Person:new(name, age)
	local o = { name = name, age = age  }
	setmetatable(o, person_mt)	
	return o
end

function Person:display()
	print(self.name, self.age)
end

function Person:can_drink()
	return self.age >= 21
end

p1 = Person:new("Joe", 15)
p2 = Person:new("Jane", 22)

p1:display()	--> Joe		15
p2:display()	--> Jane	22