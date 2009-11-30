person = { 
	name = "Marcus", 
	age = "34", 
	sex = "male" 
}

mt = {}

mt.__index = {
	company = "Minggl",
	city = "Austin"
}

setmetatable(person, mt)

print(person.name)		--> Marcus
print(person.company)  	--> Minggl	   
print(person.city)  	--> Austin

print(rawget(person, "name"))	--> Marcus
print(rawget(person, "company"))--> nil