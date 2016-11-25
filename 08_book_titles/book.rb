#!/usr/bin/env ruby
class Book
	
#	def initialize(name)

	
	attr_accessor :title

	def title
		title_new = @title.split(" ")
		title_new.each do |word|
			word.capitalize!
		end
		for i in 1...title_new.size do
			case title_new[i]
			when "And"
				title_new[i].downcase!
			when "In"
				title_new[i].downcase!
			when "Of"
				title_new[i].downcase!
			when "The"
				title_new[i].downcase!
			when "A" 
				title_new[i].downcase!
			when "An"
				title_new[i].downcase!
			end
		end
		@title = title_new.join(" ")
	end

end