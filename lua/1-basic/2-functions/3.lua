function foo(t)
end

t1 = { x=25 }

foo(t1)			--> OK
foo t1			--> ERROR!
foo { x=25 }	--> OK