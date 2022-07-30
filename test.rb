=begin
This
is
a
block
level
comment
=end

puts "Hello, Ruby!"

print <<testing
    This is a test to see if
    I can do a multi-line string
testing

print <<`EOC` #This allows you to execute commands
  echo hi there,
  echo Hello
EOC

print <<test, <<bar
      I said test
test
      I said bar
bar

END {
  puts "Nodemon is listening correctly"
}

BEGIN {
  puts "Nodemon is Initializing Ruby Program"
}

# Class Vehicle {
#   Number no_of_wheels
#   Number horsepower
#   Characters type_of_tank
#   Number Capacity

#   function speeding {

#   }

#   function driving {

#   }

#   function halting {

#   }
# }

class Customer
  @@no_of_customers = 0
  def initialize(id, name, addr)
    @cust_id = id #id is a local variable
    @cust_name = name #name is a local variable
    @cust_addr = addr #addr is a local variable
  end
  def display_details
    puts "My id is: #@cust_id"
    puts "My name is: #@cust_name" #Brackets aren't always necessary
    puts "My address is: #@cust_addr"
  end
  def total_no_of_customers
    @@no_of_customers += 1
    puts "Total number of customers is: #@@no_of_customers"
  end
end

cust1 = Customer.new(1, "Dre", "Don't worry about it.")
cust2 = Customer.new(2, "Someone Else", "Once again, don't worry about it.")


cust1.display_details
cust1.total_no_of_customers # total number is 1

cust2.display_details
cust2.total_no_of_customers # total number is 2

$global_variable = 10
class Class1
   def print_global
      puts "Global variable in Class1 is #$global_variable"
   end
end
class Class2
   def print_global
    $global_variable += 5
      puts "Global variable in Class2 is #$global_variable"
   end
end

class1obj = Class1.new
class1obj.print_global # 10. Global variable not touched, yet
class2obj = Class2.new
class2obj.print_global # 15. Global variable incremented
class1obj2 = Class2.new
class1obj2.print_global # 20. Global variable still incremented for all

class ConstantExample
  VAR1 = 100 # Constant variables work anywhere in class. Global if use outside Class.
  VAR2 = 200 # Constant variables work anywhere in class. Global if use outside Class.
  def show
    puts "Value of first Constant is #{VAR1}"
    puts "Value of second Constant is #{VAR2}"
  end
end

constant1 = ConstantExample.new
constant1.show

# SOME ARRAY METHODS BELOW

arr = ["elem1", 10, 51, 3.14, "elem5"];
arr.each do |i| #arr value
  puts i
end

arr.each_with_index do |n, idx| #arr value and index
  puts "#{n} is item #{idx}"
end

prices = [10, 15, 55, 5, 20]

double_all = prices.map do |n| n * 2 end
puts "#{double_all}"

filter_low_prices = prices.filter do |n| n >= 20 end
puts "All high prices are: #{filter_low_prices}"

arr = Array(0..10)

n = arr.length / 2

n.times do
  new_last_value = arr.shift
  arr.push new_last_value
end
puts "#{arr}" # [5, 6, 7, 8, 9, 10, 0, 1, 2, 3, 4]

total_of_arr = arr.reduce(0) do |ac, cv| ac + cv end
puts "total_of_arr is: #{total_of_arr}"
