#!/usr/bin/env ruby
class Timer



	def initialize(seconds = 0)
		@seconds = seconds
	end

	attr_accessor :seconds




	def seconds
		@seconds
	end

		@hrs = @seconds.to_i/3600
		@mnt = (@seconds.to_i%3600)/60
		@sec = @seconds.to_i%60


	def padded(sec)
		
		if sec == 0
			sec = "00"
		elsif sec < 10
			sec = "0#{sec}"
		else
			sec = sec.to_s
		end


	end

	def time_string
		hrs = padded(seconds.to_i/3600)
		mnt = padded((seconds.to_i%3600)/60)
		sec = padded(seconds.to_i%60)
		string = "#{hrs}:#{mnt}:#{sec}"

	end


end

