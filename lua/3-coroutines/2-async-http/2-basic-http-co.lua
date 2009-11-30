function http_get(url)
	return("<html><!--"..url.."--></html>")
end

function mstream()
	print(http_get("http://minggl.com/home"))
	print(http_get("http://minggl.com/login"))
	print(http_get("http://minggl.com/profile"))
end

local co = coroutine.create(mstream)
coroutine.resume(co) 