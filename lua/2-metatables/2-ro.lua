
person = { name = "Marcus", age = 34 }

function make_ro(t) 
	local ro = {}
	
	setmetatable(ro, {
	    __index = t,
		__newindex = function() error "table is readonly" end
	})	
	
	return ro
end

person = make_ro(person)

print(person.name)		--> Marcus

person.name = "Mike"	--> ERROR!