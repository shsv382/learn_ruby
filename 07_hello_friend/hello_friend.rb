#!/usr/bin/env ruby
class Friend

#def initialize(name = )
#	@name = name
#end

def greeting(who = nil)
	if who == nil
		"Hello!"
	else 
		"Hello, #{who.to_s}!"
	end
end

end


