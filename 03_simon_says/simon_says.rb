#/usr/bin/env ruby

def echo(str)
	str
end

def shout(*str)
	str.each do |i|
		i.upcase!
	end
	str.join
end

def repeat(str, times=2)
	str = (str + " ") * (times-1) + str
end

def start_of_word(str, num=1)
	str[0, num]
end

def first_word(str)
	new = str.split(" ")
	new[0]
end

def titleize(str)
	new = str.split(" ")
	case (new.length)
	when 1
		new[0].to_s.capitalize!
	when 2
	new[0].to_s.capitalize!
	new[1].to_s.capitalize!
	when 3
	new[0].to_s.capitalize!
	new[2].to_s.capitalize!
	else
	new[0].to_s.capitalize!
	new[1].to_s.capitalize!
	new[new.length-2].to_s.capitalize!
	new[new.length-1].to_s.capitalize!
	end
	new.join(" ")
end