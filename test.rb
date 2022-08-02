=begin
This
is
a
block
level
comment
=end
# https://www.tutorialspoint.com/ruby.htm
END {
  puts "Nodemon is listening correctly"
}

BEGIN {
  puts "Nodemon is Initializing Ruby Program"
}
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
puts "#{arr}"     # [5, 6, 7, 8, 9, 10, 0, 1, 2, 3, 4]

total_of_arr = arr.reduce(0) do |ac, cv| ac + cv end
puts "total_of_arr is: #{total_of_arr}"

h = Hash["a" => 100, "b" => 200]
puts "Hash at a value: #{h["a"]}"
puts "Hash at b value: #{h["b"]}"
h.each do |key, value|
  puts "Hash at #{key} value: #{value}"
end

(10..15).each do |n|
   puts n
end

(10...15).each do |n|
   puts n
end

# OPERATORS

a, b, c = 10, 20, 30
a, b, = b, c
puts a, b, c

if(a && b > 30)
  puts "It's true!"
else
  puts "It's false :("
end

my_boolean = true

puts my_boolean ? "my_boolean is true" : "my_boolean is false" # Requires doing something with return value

puts "variable my_boolean is a #{defined? my_boolean}" # local-variable

# MR_COUNT = 0         # constant defined on main Object class
# module Foo
  #  MR_COUNT = 0
  #  ::MR_COUNT = 1    # set global count to 1
  #  MR_COUNT = 2      # set local count to 2
# end
# puts MR_COUNT        # this is the global constant
# puts Foo::MR_COUNT

class Testing
  def initialize(id, name)
    @testing_id = id
    @testing_name = name
  end
  def show_details
    puts "My current id is #@testing_id"
    puts "My current name is #@testing_name"
  end
end

test1 = Testing.new(1, "Dre")
puts test1.show_details
puts test1::show_details

    # CONDITIONAL STATEMENTS

x = -5
if x > 2
   puts "x is greater than 2"
elsif x <= 2 && x > 0 and x!=0    # Completely unnecessary
   puts "x is 1"
else
   puts "I can't guess the number"
end

testing_if_modifier = true
puts "This is true" if testing_if_modifier

puts "This is true" unless !testing_if_modifier

# case expr0
# when expr1, expr2
# stmt1
# when expr3, expr4
# stmt2
# else
# stmt3
# end

# _tmp = expr0
# if expr1 === _tmp || expr2 === _tmp
#    stmt1
# elsif expr3 === _tmp || expr4 === _tmp
#    stmt2
# else
#    stmt3
# end

age =  5
case age    # little child
when 0 .. 2
   puts "baby"
when 3 .. 6
   puts "little child"
when 7 .. 12
   puts "child"
when 13 .. 18
   puts "youth"
else
   puts "adult"
end

def increment_i
  arr = []
  i = 0
  max = 5
  while i < max
    arr.push(i)
    i += 1
  end
  return "#{arr}"
end
puts increment_i

class Incrementer
  def initialize(start, last)
  @start = start
  @last = last
  @arr = []
  end
  def Incrementer.count_methods
    return Incrementer.instance_methods(false).length
  end
  def testing_while_statement   # USES WHILE LOOP
    while @start <= @last
      @arr.push(@start)
      @start += 1
    end
    return @arr
  end
  def testing_while_modifier    # WILL ALWAYS EXECUTE CODE ONCE UNLESS
    begin                       # EXPLICITLY STATED (rescue/ensure clause)
      @arr.push(@start)
      @start += 1
    end while @start <= @last
    return @arr
  end
  def testing_until_statement
    until @start > @last
      @arr.push(@start)
      @start += 1
    end
    return @arr
  end
  def testing_until_modifier    # WILL ALWAYS EXECUTE CODE ONCE UNLESS
    begin                       # EXPLICITLY STATED (rescue/ensure clause)
      @arr.push(@start)
      @start += 1
    end until @start > @last
    return @arr
  end
  def testing_for_statement
    for @start in @last
      @arr.push(@start)
    end
    return @arr
  end
  def testing_break_statement
    for @start in @last
      @arr.push(@start)
      if(@start == 5)
        break
      end
    end
    return @arr
  end
  def testing_next_statement
    for @start in @last
      if @start < 5 then
        next
      end
      @arr.push(@start)
    end
    return @arr
  end
end

while_statement = Incrementer.new(0, 10);
while_modifier = Incrementer.new(5, 0);
until_statement = Incrementer.new(0, 10);
until_modifier = Incrementer.new(5, 0);
for_statement = Incrementer.new(0, 0..10);
break_statement = Incrementer.new(0, 0..10);
next_statement = Incrementer.new(0, 0..10);

puts "while_statement method arr value is #{while_statement::testing_while_statement}"
puts "while_modifier method arr value is #{while_modifier::testing_while_modifier}"
puts "until_statement method arr value is #{until_statement::testing_until_statement}"
puts "until_modifier method arr value is #{until_modifier::testing_until_modifier}"
puts "for_statement method arr value is #{for_statement::testing_for_statement}"
puts "break_statement method arr value is #{break_statement::testing_break_statement}"
puts "next_statement method arr value is #{next_statement::testing_next_statement}"
puts "Amount of methods: #{Incrementer.count_methods}"

class Methods
  def favorite_languages (param1 = "JavaScript", param2 = "postgreSQL")
    puts "My favorite programming language is #{param1}."
    puts "My other favorite, is #{param2}."
  end
  def variable_parameters (*pet_type)
    puts "My favorite pets are #{pet_type}."
  end
end
favorites = Methods.new()
favorites::favorite_languages
favorites::favorite_languages "JavaScript", "Ruby"
variables = Methods.new()
variables::variable_parameters "Dogs", "Cats", "Parakeets", "Fish"
