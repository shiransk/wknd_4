# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

module SimpleCalc
  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end
end

class SimpleCalculator
  include SimpleCalc
end

class FancyCalculator
  include SimpleCalc

  def square_root(number)
    Math.sqrt(number)
  end

end

class WhizBangCalculator < FancyCalculator

  def square_root(number)
    Math.sqrt(number)
  end

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:

whize = WhizBangCalculator.new 
simple = SimpleCalculator.new
fancy  = FancyCalculator.new
puts "TESTING fancy calculator"

puts "TESTING square_root..."
puts

result = fancy.square_root(16)

puts "Your method returned:"
puts result
puts

if result == 4
  puts "PASS!"
else
  puts "F"
end

puts "TESTING add..."
puts

result = fancy.add(2,1)

puts "Your method returned:"
puts result
puts

if result == 3
  puts "PASS!"
else
  puts "F"
end

puts "TESTING subtract..."
puts

result = fancy.subtract(2,1)

puts "Your method returned:"
puts result
puts

if result == 1
  puts "PASS!"
else
  puts "F"
end

puts "TESTING multiply..."
puts

result = fancy.multiply(2,3)

puts "Your method returned:"
puts result
puts

if result == 6
  puts "PASS!"
else
  puts "F"
end

puts "TESTING divide..."
puts

result = fancy.divide(6,2)

puts "Your method returned:"
puts result
puts

if result == 3
  puts "PASS!"
else
  puts "F"
end

puts "----------------------------------"

puts "TESTING simple calculator"

puts "TESTING add..."
puts

result = simple.add(2,1)

puts "Your method returned:"
puts result
puts

if result == 3
  puts "PASS!"
else
  puts "F"
end

puts "TESTING subtract..."
puts

result = simple.subtract(2,1)

puts "Your method returned:"
puts result
puts

if result == 1
  puts "PASS!"
else
  puts "F"
end

puts "TESTING multiply..."
puts

result = simple.multiply(2,3)

puts "Your method returned:"
puts result
puts

if result == 6
  puts "PASS!"
else
  puts "F"
end

puts "TESTING divide..."
puts

result = simple.divide(6,2)

puts "Your method returned:"
puts result
puts

if result == 3
  puts "PASS!"
else
  puts "F"
end

puts '-----------------------------'

puts "TESTING WhizBangCalculator"

puts "TESTING square_root..."
puts

result = whize.square_root(16)

puts "Your method returned:"
puts result
puts

if result == 4
  puts "PASS!"
else
  puts "F"
end

puts "TESTING add..."
puts

result = whize.add(2,1)

puts "Your method returned:"
puts result
puts

if result == 3
  puts "PASS!"
else
  puts "F"
end

puts "TESTING subtract..."
puts

result = whize.subtract(2,1)

puts "Your method returned:"
puts result
puts

if result == 1
  puts "PASS!"
else
  puts "F"
end

puts "TESTING multiply..."
puts

result = whize.multiply(2,3)

puts "Your method returned:"
puts result
puts

if result == 6
  puts "PASS!"
else
  puts "F"
end

puts "TESTING divide..."
puts

result = whize.divide(6,2)

puts "Your method returned:"
puts result
puts

if result == 3
  puts "PASS!"
else
  puts "F"
end

puts "TESTING hypotenuse..."
puts

result = whize.hypotenuse(3,4)

puts "Your method returned:"
puts result
puts

if result == 5
  puts "PASS!"
else
  puts "F"
end

puts "TESTING exponent..."
puts

result = whize.exponent(2,6)

puts "Your method returned:"
puts result
puts

if result == 64
  puts "PASS!"
else
  puts "F"
end

