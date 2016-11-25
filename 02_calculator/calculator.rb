#/usr/bin/env ruby

def add(num1, num2)
	num1+num2
end

def subtract(num1, num2)
	num1-num2
end

def multiply(num1, *num2)
	num2.each do |i|
	num1 = num1 * i
	end
	num1
end

def sum(num)
	sum = 0
	num.each do |i|
		sum = sum + i
	end
	sum
end

def power(num, power)
	result = num ** power
end

def factorial(num)
	fact = 1
	for i in 1..num do
		fact = fact * i
	end
	fact
end

puts factorial(5)
puts factorial(10)
puts multiply(4,5,3,7)