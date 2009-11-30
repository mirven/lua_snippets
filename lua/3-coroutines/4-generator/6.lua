function coroutine.wrap(func)
	local co = coroutine.create(func)
	
	return function()
		local _, result = coroutine.resume(co)
		return result
	end
end