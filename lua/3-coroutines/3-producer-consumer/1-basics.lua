-- producer/consumer functions MISSING send/receive

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