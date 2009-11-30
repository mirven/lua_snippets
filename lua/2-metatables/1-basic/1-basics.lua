person = { 
	name = "Marcus", 
	age = "34", 
	sex = "male" 
}

print(getmetatable(person))		--> nil

mt = {}

setmetatable(person, mt)		-- set's person's metatable to mt

if getmetatable(person) == mt then
	print "Hi."
end