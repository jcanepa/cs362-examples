begin
  puts 1/0
rescue
  puts "Hey, bad news. You can't divide by zero"
end
puts "Program will never get here"
