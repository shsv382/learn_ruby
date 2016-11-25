#!/usr/bin/env ruby
def measure(count = 1)

if count > 1 
		e = Time.now
	count.times {
		yield
		
	}

t = (Time.now - e).to_f/count
		t

else

	yield.to_f % 100

end


end
