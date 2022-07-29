puts "Hello, Ruby!";

print <<something
    Testing to see if I
    can turn this into a multiple line string?
something

print <<`something_else` #Allows you to execute commands
    echo hello there
    echo goodbye here
something_else

def name
  my_name = dre
end

print <<foo, <<bar
    Testing out name.
foo
    Testing out bar
bar

END {
  puts "This is the end of Ruby Program"
}

puts "This is main Ruby Program"

BEGIN {
  puts "Initializing Ruby Program"
}
