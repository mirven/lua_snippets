print(_G)			--> table: 0x100370
print(getfenv(1))	--> table: 0x100370

function foo()
	print(getfenv(1))	
end

print(getfenv(foo))	--> table: 0x100370
foo()				--> table: 0x100370