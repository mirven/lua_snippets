if i > 100 then
	i = 0
end

if i > 100 then
	i = 0
else 
	i = i + 1
end

if i == 1 then
	-- do something
elseif i == 2 then 
	-- do something else
elseif i == 2 then 
	-- do yet something else
else
	error("Invalid i: "..i)
end