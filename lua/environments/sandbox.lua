code = "print('this is not sandboxed')"

f = loadstring(code)

f()