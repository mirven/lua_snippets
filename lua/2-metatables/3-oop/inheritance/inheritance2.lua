
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

--

Food = {}

function Food:new(name)
	local o = { name = name }
	self.__index = self
	setmetatable(o, self)
	return o
end

Grass = Food:new()

Cow = Animal:new()

Chicken = Food:new()

function Cow:eat(food)
	if getmetatable(food) == Grass then
		print(self.name..", a cow, is eating "..food.name)		
	else
		error("A cow can only eat grass!")
	end
end

cow = Cow:new("bessie")

grass = Grass:new("grass")

chicken = Chicken:new("chicken")


cow:eat(chicken)