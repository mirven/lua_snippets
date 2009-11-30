t = {}

mt = {
	__index = {
		foo = "foo",
		bar = "bar"
	}
}

-- setmetatable(t, mt)

print(t.foo)