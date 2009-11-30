t = {}			-- create a new table

t.x = 25		-- creates new entry with key="x" and value=25
t.y = 50		-- creates new entry with key="y"" and value=25

print(t.x)		--> 25

t["z"] = -1		-- creates new entry with key="z" and value=-1

print(t["z"])	--> -1
print(t.z)		--> -1

foo = "z"
print(t[foo])	--> -1