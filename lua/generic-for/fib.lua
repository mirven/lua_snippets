
function fib(max)
	local i, j = 0, 1
	
	coroutine.yield(i)
	coroutine.yield(j)
	
	while i+j < max do
		coroutine.yield(i+j)
		i,j = j,i+j
	end
end

-- local co = coroutine.create)
-- 
-- for i=1, 40 do
-- 	local status, result = coroutine.resume(co)
-- 	print(result)
-- end


function fibi(max)
  local co = coroutine.create(function() fib(max) end)
  return function() 
    local status, result = coroutine.resume(co)
    return result
  end
end

function wrap(f)
	local co = coroutine.create(f)
	return function() 
	  local status, result = coroutine.resume(co)
	  return result
	end
end

-- for f in fibi(11000) do
-- 	print(f)
-- end


for f in wrap(function() fib(11000) end) do
	print(f)
end

fib = function(n) return wrap(function() fib(n) end) end

for f in fib(11000) do
	print(f)
end



