person = { 
	name = "Marcus", 
	age = "34", 
	sex = "male" 
}

mt = {}

function mt.__index(table, key)
	print("looking for key: "..key)
	return key
end

setmetatable(person, mt)

print(person.xyz)   --> looking for key: xyz
					--> xyz
print(person.abc)   --> looking for key: abc
					--> abc
