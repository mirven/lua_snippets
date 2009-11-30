
-- function squares(max)
-- 	return function(max, current)
-- 		if (current+1)^2 > max then return nil end
-- 		return current+1, (current+1)^2
-- 	end, max, 0
-- end
-- 
-- for i, s in squares(100) do
-- 	print(i, s)
-- end


-- function x(max)
-- 	local i = 1
-- 	return function()	
-- 		local sq = i*i
-- 		if sq > max then return nil end
-- 		i = i + 1
-- 		return sq
-- 	end
-- end
-- 
-- for a in x(100) do
-- 	print(a)
-- end

function x(n)
	local i = 1
	return function()	
		local sq = i*i
		if i > n then return nil end
		i = i + 1
		return sq
	end
end

for a in x(20) do
	print(a)
end