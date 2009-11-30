
-- function squares(n)
-- 	for i=1,n do
-- 		coroutine.yield(i*i)
-- 	end
-- end

-- function squaresi(n)
-- 	local co = coroutine.create(function() squares(n) end)
-- 	return function()
-- 		local status, result = coroutine.resume(co)
-- 		return result
-- 	end
-- end
-- 
-- for s in squaresi(20) do
-- 	print(s)
-- end
-- 
-- for s in coroutine.wrap(function() squares(20) end) do
-- 	print(s)
-- end

-- function sq(n)
-- 	return coroutine.wrap(function() squares(n) end)
-- end
-- 
-- for s in sq(20) do
-- 	print(s)
-- end

function sq(n)
	return coroutine.wrap(function() 
		for i=1,n do
			coroutine.yield(i*i)
		end
	end)
end

for s in sq(20) do
	print(s)
end
