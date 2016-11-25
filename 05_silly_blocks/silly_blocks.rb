#!/usr/bin/env ruby
def reverser
	str = yield
	if str.include? " "
	strarr = str.split(" ")
	for i in 0...strarr.size
		strarr[i] = strarr[i].reverse
		puts strarr[i]
		strarr[i]
	end
	str = strarr.join(" ")
#	puts str
else
	str = str.reverse
end	
	str
#		yield.reverse
end


def adder(count = 1)

	res = yield + count
	res

end



def repeater(count = 1)

	count.times {yield}

end