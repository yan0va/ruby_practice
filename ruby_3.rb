def provide_mortgage?(salary, deposit, property_value)
  loan_amount = property_value - deposit
  min_deposit = 0.2 # 20%
  max_multiplier = 5 # how many annual income can be borrowed
  deposit >= property_value * min_deposit && salary * max_multiplier >= loan_amount
end

# Ex 1
# Decide if it would return true or false for these inputs without running the code.

# a - true
puts provide_mortgage? (30_000, 50_000, 200_000)
# b - false
puts provide_mortgage? (30_000, 50_000, 300_000)
# c - true
puts provide_mortgage? (50_000, 40_000, 200_000)
# d - true
puts provide_mortgage? (80_000, 100_000, 500_000)
# e - false
puts provide_mortgage? (35_000, 60_000, 300_000)
# f - true
puts provide_mortgage? (25_000, 30_000, 150_000)

# Ex 2
# Require 5% deposit if the value of the property is less than 650,000 and 20% if it's 650,000 or more.

def provide_mortgage_2?(salary, deposit, property_value)  
  loan_amount = property_value - deposit
  min_deposit = property_value >= 650_000 ? 0.2 : 0.05 # ternary operator: expr ? value_if_true : value_if_false
  max_multiplier  = 5 # how many annual incomes can be borrowed
  deposit >= property_value * min_deposit && salary * max_multiplier >= loan_amount
end

# Ex 3
# Waive the limit on the loan amount if the deposit is 75% or more.

def provide_mortgage_3?(salary, deposit, property_value)
  loan_amount = property_value - deposit
  min_deposit = property_value >= 650_000 ? 0.2 : 0.05
  max_multiplier = 5 # how many annual income can be borrowed
  deposit >= property_value * min_deposit && (salary * max_multiplier >= loan_amount || deposit >= property_value * 0.75)
end

# Ex 4
# Modify the method to never provide a mortgage to a bankrupt person.

def provide_mortgage_4?(salary, deposit, property_value, bankrupt)
  return false if bankrupt
  loan_amount = property_value - deposit
  min_deposit = property_value >= 650_000 ? 0.2 : 0.05
  max_multiplier = 5 # how many annual income can be borrowed
  deposit >= property_value * min_deposit && (salary * max_multiplier >= loan_amount || deposit >= property_value * 0.75)
end
