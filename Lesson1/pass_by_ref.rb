=begin

Exercise:
Create a method that takes an array as a parameter. 
Within that method, try calling methods that do not mutate the caller. 
How does that affect the array outside of the method? What about when you 
call a method that mutates the caller within the method?

Answers:
If you call a method on an array that does not mutate the array,
then the array is not affected outside of the method
If you call a method that mutates the array within the method,
then the array will be affected outside of the method

In the following code example, calling the sort method does not mutate
the caller and using the array after this method is called does not 
affect the array afterwards

However, calling the sort! method does mutate the caller, and the array
is still modified even outside of the method
=end

def modify_array arr
  arr.sort
end

def modify_array_mutator arr
  arr.sort!
end

numbers = [4,2,3,1]
puts "Array before non-mutator method:"
puts numbers

modify_array(numbers)

puts "Array after non-mutator method:"
puts numbers
puts

numbers_2 = [4,2,3,1]

puts "Array before mutator method:"
puts numbers_2

modify_array_mutator(numbers_2)

puts "Array after mutator method:"
puts numbers_2