# Ex 1
# Assign the string "Makers" to a variable and print it out.
# variable_name = value

people = "Makers"
puts "The people variable is currently: " + people

# Change the variable to "Coders" and print it again.

people = "Coders"
puts "The people variable is currently: #{people}"

# Ex 2
# Create new variables (and change them) by putting the variable name on the left and the value on the right of the assignment.

first_line = "Makers Academy, "
second_line = "Epworth House, "
third_line = "25 City Road, "
postcode = "EC1Y 1AA"
address = first_line + second_line + third_line + postcode

# Ex 3
# If we don't have a value for age, we can set it to nil.

age = nil
if age.nil?
  puts "I have no idea how old I am"
else
  puts "I'm #{age} years old"
end








