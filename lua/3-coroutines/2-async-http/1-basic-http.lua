function http_get(url)
	return "<html><!--"..url.."--></html>"
end

function mstream()
	print(http_get("http://minggl.com/home"))	
	print(http_get("http://minggl.com/login"))	
	print(http_get("http://minggl.com/profile"))
end

mstream() --> <html><!--http://minggl.com/home--></html>
          --> <html><!--http://minggl.com/login--></html>
          --> <html><!--http://minggl.com/profile--></html>