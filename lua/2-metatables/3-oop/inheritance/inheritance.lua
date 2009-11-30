
Animal = {}

function Animal:new(name)
	local o = { name = name }
	self.__index = self
	setmetatable(o, self)
	return o
end

function Animal:eat(food)
	print(self.name.." is eating "..food.name)
end


Food = {}

function Food:new(name)
	local o = { name = name }
	self.__index = self
	setmetatable(o, self)
	return o
end


cow = Animal:new("cow")

grass = Food:new("grass")


cow:eat(grass)