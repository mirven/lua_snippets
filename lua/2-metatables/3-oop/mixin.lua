
ModuleA = {
	foo = function()
		print "foo"
	end,
	
	bar = function()
		print "bar"
	end
}


Apple = {}

function Apple:new()
	local o = {}
	self.__index = self
	setmetatable(o, self)
	return o
end



a = Apple:new()

-- setmetatable(Apple, { __index = ModuleA })



function include(obj, module)
	for k,v in pairs(module) do
		obj[k] = v
	end
end

-- include(Apple, ModuleA)
include(a, ModuleA)

a:foo()