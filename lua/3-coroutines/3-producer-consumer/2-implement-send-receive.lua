-- same producer/consumer functions with send/receive

function producer()
	local stream = { 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j' }
	
	for _, s in ipairs(stream) do
		send(s)
	end
end

function consumer(prod)
	local value = receive(prod)
	while value do
		print("->", value)
		value = receive(prod)
	end
end

function receive(prod)
	local _, value = coroutine.resume(prod)
	return value
end

function send(x)
	coroutine.yield(x)
end

consumer(coroutine.create(producer))