#!/usr/bin/env ruby

def process (string1)

	string1 = string1.gsub(/qu/, "@")
	string = string1.gsub(/sch/, "№")
		
		# Первая буква гласная
		if string[0] == "a" || string[0] == "e" ||  string[0] == "i" ||  string[0] == "o" || string[0] == "u"
			string = string + "ay"

		else 				
		# Первая согласная
			if string[1] == "a" || string[1] == "e" ||  string[1] == "i" ||  string[1] == "o" || string[1] == "u"
				endstr = string[0]
				string = string[1, string.length - 1]
				string = string + endstr + "ay"

			else 			
			# Первые две согласные
#				case string[2]
				# Первые две согласные, третья гласная
#				when "a" || "e" ||  "i" ||  "o" ||  "u"

					endstr = string[0, 2]
					string = string[2, string.length - 2]
					string = string + endstr + "ay"
					if string[0] == "a" || 
						string[0] == "e" || 
						string[0] == "i" || 
						string[0] == "o" || 
						string[0] == "u"
						
						string
					else 	
						endstr = string[0]
						string = string[1, string.length - 3]
						string = string + endstr + "ay"
						string
					end
			end
		end


string1 = string.gsub(/№/, "sch")
string1 = string1.gsub(/@/, "qu")

puts string1
string1
end




def translate(str)

if str.include? " "
	strarr = str.split(" ")
	for i in 0...strarr.size
		strarr[i] = process(strarr[i])
		puts strarr[i]
		strarr[i]
	end
	puts strarr.join(" ")
	str = strarr.join(" ")
	puts str.to_s
	str
#	puts str
else
	string1 = str
	string1 = process(string1)
	puts string1
#	str = string1
string1
end	

#str
#puts str.to_s
end

translate "apple way"