
function squares(n) {
	var i = 1
	return function() {
		var sq = i*i
		if (i > n) return null
		i++
		return sq
	}
}

for (var f=squares(10), i=0; i<10; i++) {
	print(f())
}