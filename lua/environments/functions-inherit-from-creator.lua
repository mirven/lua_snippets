
function foo()
	print("in foo", getfenv(1))
	function bar()
		print("in bar", getfenv(1))
	end
	bar()
end

t = { print = print, getfenv = getfenv, bar = bar }
setfenv(foo, t)

print("global", _G)
print("t", t)
foo()