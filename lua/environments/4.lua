function foo()
	x = 25
	print("in foo", x, env.x)
end

env = {}
setmetatable(env, { __index = _G })
setfenv(foo, env)

foo()								--> in foo	25	25
print("outside of foo", x, env.x)	-->	outside of foo	nil	25