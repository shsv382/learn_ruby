#!/usr/bin/env ruby
class Temperature



	def initialize(deg)
		@deg = deg
	end

	attr_accessor :deg


	def in_fahrenheit

		value = deg[:c].to_f * 1.8 + 32
		value = deg[:f].to_f

	end

	def in_celsius

		value = deg[:c].to_f
		value = (deg[:f].to_f - 32) * 5.0 / 9.0

	end


end
