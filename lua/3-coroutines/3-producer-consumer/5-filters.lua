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
	return value
end

function send(x)
	coroutine.yield(x)
end

-- filters

function filter(prod)
	local allowed_letters = {
		a = true,
		c = true,
		d = true,
		e = true
	}
	
	return coroutine.create(function()	
		local value = receive(prod)
		while value do
			if allowed_letters[value] then
				send(value)
			end
			value = receive(prod)
		end		
	end)
end

function duplicator(prod)
	return coroutine.create(function()	
		local value = receive(prod)
		while value do
			send(value)
			send(value)
			value = receive(prod)
		end		
	end)
end

function reversor(prod)
	return coroutine.create(function()	
		local values = {}
		
		local value = receive(prod)
		while value do
			values[#values+1] = value
			value = receive(prod)
		end
		for i = #values, 1, -1 do
			send(values[i])
		end
	end)
end

function seeing_double(prod)
	return coroutine.create(function()	
		local value = receive(prod)
		while value do
			send(value..value)
			value = receive(prod)
		end		
	end)
end

consumer(seeing_double(duplicator(producer())))