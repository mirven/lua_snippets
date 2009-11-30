-- add filters

function producer()
	local stream = { 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j' }

	return coroutine.create(function() 
		for _, s in ipairs(stream) do
			send(s)
		end
	end)
end

function consumer(prod)
	local value = receive(prod)
	while value do
		print("->", value)
		value = receive(prod)
	end
end

function receive(prod)
	local status, value = coroutine.resume(prod)
	if value then
		print("receive "..value)
	end
	return value
end

function send(x)
	print("send "..x)
	coroutine.yield(x)
end

-- filters

function filter(prod)
	return coroutine.create(function()	
		local value = receive(prod)
		while value do
			if value ~= 'f' then
				send(value)
				send(value..value)
			end
			value = receive(prod)
		end		
	end)
end

consumer(filter(producer()))