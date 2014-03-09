=begin

Lesson 1: Variable scope

Play around with variable scope and test out different scenarios.

1 Create a local variable and modify it at an inner scope (in between a do/end block). 
You can try

    a) re-assigning the variable to something else
    b) call a method that doesn’t mutate the caller
    c) call a method that mutates the caller.

2 Create a local variable at an inner scope (within a do/end block) and try to 
reference it in the outer scope. What happens when you have nested do/end blocks? 

=end

1.times do
  b = "some string"
  puts "b is #{b}"
  puts "b.upcase is #{b.upcase}"
  puts "b is #{b}"
  puts "b.upcase! is #{b.upcase!}"
  puts "b is #{b}"
end
puts
puts 'Trying different scopes:'
puts

1.times do
  c = "some string"
  puts "Using same scope: c is #{c}"
end

# the next line will cause an error because it is out of scope
#puts "Using outer scope: c is #{c}"

1.times do
  d = "this is d"
  puts d
  1.times do
    e = "this is e"
    puts e
    puts d
  end
  # next line will cause an error because we are now out of scope of e
  #puts e
end
# the next two lines will cause an error because both d and e are now out of scope
#puts d
#puts e