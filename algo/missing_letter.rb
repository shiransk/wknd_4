# Return the missing letter from a given range of letters passed into the method
# as a string. If there is no missing letter, the method should return nil.
# bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.

  def find_missing_letter(range)
    first = range[0] 
    last = range[-1] 
    string_range = first..last
    range_array = range.split(//)
    string_array = string_range.to_a
    missing = string_array - range_array
    if string_array.length == range.length
      return nil
    elsif 
      missing.length == 1 
      missing[0].to_s
    else
      long_string = string_array - range_array
      long_string.join.to_s
    end
  end

# Driver code - don't touch anything below this line.
puts "TESTING find_missing_letter..."
puts

result = find_missing_letter("opqrsuv")

puts "Your method returned:"
puts result
puts

if result == "t"
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("xyz")

puts "Your method returned:"
puts result
puts

if result == nil
  puts "PASS!"
else
  puts "F"
end

puts "-----------"

puts "TESTING find_missing_letter Bonus..."
puts

result = find_missing_letter("ace")

puts "Your method returned:"
puts result
puts

if result == "bd"
  puts "PASS!"
else
  puts "F"
end





