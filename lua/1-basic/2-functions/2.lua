function foo(str)
	print(str)
end

foo("in foo")	--> "in foo"

foo "in foo"	--> "in foo"

s = "in foo"
foo s			--> ERROR!

foo(s)			--> "in foo"