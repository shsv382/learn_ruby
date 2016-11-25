#!/usr/bin/env ruby

def translate(string)

		string.to_s

		case string[0] 			
		# Первая буква гласная
		when "a" || "e" ||  "i" ||  "o" ||  "u"
			string = string + "ay"
		else 			
		# Первая согласная
			case string[1]
			# Первая согласная, вторая гласная
			when "a" || "e" ||  "i" ||  "o" ||  "u"
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

string

end



#				else
				# Три согласные и более	
#					endstr = string[0, 3]
#					string = string[3, string.length - 3]
#					string = string + endstr + "ay"
					