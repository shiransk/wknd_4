# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)
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

# Copy your driver code from the previous exercise below:
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