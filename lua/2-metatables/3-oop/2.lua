function person_display(self)
	print(self.name, self.age)
end

function person_can_drink(self)
	return self.age >= 21
end

function person_new(name, age)
	return { 
		name = name, 
		age = age, 
		display = person_display, 
		can_drink = person_can_drink 
	}
end

p1 = person_new("Joe", 15)
p2 = person_new("Jane", 22)

p1:display()	--> Joe		15
p2:display()	--> Jane	22