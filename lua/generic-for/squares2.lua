
function squares(max)
	return function(max, current)
		if (current+1)^2 > max then return nil end
		return current+1, (current+1)^2, (current+1)^2 + 1
	end, max, 0
end

for i, s, s_1 in squares(100) do
	print(i, s, s_1)
end