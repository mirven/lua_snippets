person = { name = "Marcus", age = "34" }


-- All 3 of these are exactly the same
person.print = function(self)
	print(self.name, self.age)
end

function person.print(self)
	print(self.name, self.age)
end

function person:print()
	print(self.name, self.age)
end


-- Both of these are exactly the same
person.print(person)  	--> Marcus	34
person:print()  		--> Marcus	34