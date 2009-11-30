a = { "apple", "banana" , "orange", "pear" }

print(a[1])		--> apple
print(a[3])		--> orange
print(a[5])		--> nil

print(#a)		--> 4

for i=1,#a do
	print(a[i])	--> apple
				--> banana
				-->	orange
				--> pear
end

for i,fruit in ipairs(a) do
	print(i, fruit)	--> 1	apple
	                --> 2	banana
                   	-->	3	orange
                   	--> 4	pear
end