function http_get(url)
	print("http_get: "..url)
	local html = coroutine.yield(url)
	print("end http_get: "..url)
	
	return html
end

function mstream()
	print("-->", http_get("http://minggl.com/home"))
	print("-->", http_get("http://minggl.com/login"))
	print("-->", http_get("http://minggl.com/profile"))
	return 7
end

function http_callback(co, html)
	print("http_callback: "..html)
	local status, url = coroutine.resume(co, html)
	return url
end

local co = coroutine.create(mstream)

-- Starts function
status, url = coroutine.resume(co)

while url ~= 7 do
	url = http_callback(co, "<html><!--"..url.."--></html>")
end



