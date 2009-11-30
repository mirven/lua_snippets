code = "print('this is sandboxed')"

f = loadstring(code)

setfenv(f, {})
f()

