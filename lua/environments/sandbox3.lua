code = "p('this is sandboxed')"

f = loadstring(code)

setfenv(f, { p = print })
f()