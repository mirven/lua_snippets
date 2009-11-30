print("_G", _G)					--> _G		table: 0x100370

function foo()
	print("foo 1", getfenv(1))
	print("foo 2", getfenv(2))
end

env = {}
setmetatable(env, { __index = _G })
setfenv(foo, env)

print("env", env)				--> env		table: 0x104510

foo()							--> foo 1	table: 0x104510
								--> foo 2	table: 0x100370
					
print("getfenv", getfenv(foo))	--> getfenv	table: 0x104510