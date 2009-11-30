Person = {}
Person.__index = Person

function Person:new(name, age)
	local o = { ["name"] = name, age = age  }
	setmetatable(o, self)	
	return o
end

function Person:display()
	print(self.name, self.age)
end

Person.can_drink = function(self)
	for k,v in pairs(self) do
		print("->", k,v)
	end
	return self.age >= 21
end

p1 = Person:new("Joe", 15)
p2 = Person:new("Jane", 22)

-- p1:display()	--> Joe		15
-- p2:display()	--> Jane	22

p1:can_drink()