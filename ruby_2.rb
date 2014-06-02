# Create functions that take more than one argument.

def hello(name, age)
  puts "Welcome #{name}, #{age} is definitely not too old to learn how to code."
end

hello("rob",30)
hello("steve",72)
hello("jenny",55)

# Write a method that calculates a monthly payment given an annual salary.

def monthly_payment(salary_per_annum)
    return salary_per_annum / 12
end
 
puts "If the salary is £30,000 per year,"
puts "the monthly payment will be #{monthly_payment(30000)}"

# gets() method is the opposite of puts(). Instead of printing things on the screen, it waits for the user input.

puts "Hello! What's your name?"
name = gets
puts "Nice to meet you #{name.chomp}. What day of the week is it today?"
day = gets
puts "It's great that you're coding on #{day.chomp}"