# Introduction to Ruby and Web Development
# Lesson 1: Ruby exercises

# 1. Use the "each" method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

# [1,2,3,4,5,6,7,8,9,10].each{|n| puts n}

# 2. Same as above, but only print out values greater than 5.


nums = [1,2,3,4,5,6,7,8,9,10]

=begin
nums.each{
  |n| 
  if n > 5
    puts n
  end
}
=end

# 3. Now, using the same array from #2, use the "select" method to extract all odd numbers into a new array.

odd_nums = []
odd_nums = nums.select{|n| n % 2 != 0}
puts odd_nums.to_s

# 4. Append "11" to the end of the array. Prepend "0" to the beginning.

odd_nums.push(11)

puts
puts odd_nums.to_s

# first attempt to prepend "0"
# odd_nums = odd_nums.reverse.push(0).reverse

# alternate way
odd_nums.unshift(0)

puts
puts odd_nums.to_s

# 5. Get rid of "11". And append a "3".

 odd_nums.delete(11)

# alternate way to delete 11
# odd_nums.pop()

odd_nums.push(3)

puts 
puts odd_nums.to_s

# 6. Get rid of duplicates without specifically removing any one value. 

odd_nums.each_with_index { |n, index|
  odd_nums.each_with_index { |n2, index2|
  if (n == n2 && index != index2)
    odd_nums.delete_at(index)
  end
  }
}

puts
puts odd_nums.to_s

# 7. What's the major difference between an Array and a Hash?

# The main difference is that a hash does not have to use integer values
# as its index, instead it can use keys of any object type
# also hashes are not ordered

# 8. Create a Hash using both Ruby 1.8 and 1.9 syntax.

#ruby1.8
{:name => 'bob'}

#ruby1.9
{name: 'bob'}

# 9-13 Suppose you have a h = {a:1, b:2, c:3, d:4}
# 9. Get the value of key "b".

h[:b]
# 10. Add to this hash the key:value pair {e:5}
h[:e] = 5

# 13. Remove all key:value pairs whose value is less than 3.5
h.delete_if{|k, v| v < 3.5}

# 14. Can hash values be arrays? Can you have an array of hashes? (give examples)
# yes and yes

#hash of arrays
{a: [1,2,3,4,5], b: 2, c: 3}

#array of hashes
[{a: 1, b: 2, c: 3}, 2, 3, 4, 5]

# 15. Look at several Rails/Ruby online API sources and say which one your like best and why.
#
#initially I looked at ruby-doc.org and saw that it provides a comprehensive listing 
#of a lot of the ruby documentation for classes and methods
#however afterwards I visited railsapi. It is very user-friendly and provides 
#significant functionality in regards to finding information quick and easily