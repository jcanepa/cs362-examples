# basic example
begin
  puts 1/0
rescue
  puts "Hey, bad news. You can't divide by zero"
end

# access exception object
begin
  puts 1/0
rescue => e
  puts "Hey, bad news. You can't divide by zero"
  puts "Here are the details of the exception:"
  puts "Classname: #{e.class.name}"
  puts "Message: #{e.message}"
  puts "Backtrace: #{e.backtrace}"
end

# explicitly catch certain kinds of exceptions (with default)
begin
  puts 1/0
rescue ZeroDivisionError => e
  puts "Hey, bad news. You can't divide by zero"
  puts "Here are the details of the exception:"
  puts "Classname: #{e.class.name}"
  puts "Message: #{e.message}"
  puts "Backtrace: #{e.backtrace}"
rescue
  puts "I don't know what kind of error you encountered"
end

# other constructs
begin
  puts 1/0
rescue
  puts "whoops"
else
  puts "no exception occured"
ensure
  puts "this runs always"
end