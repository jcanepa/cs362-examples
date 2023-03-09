# Julian Canepa
# CS 362 Exercise 8: Intermediate Ruby

commands = {
  'noun' => [2, :noun, :Cadillac],
  'verb' => [2, :noun, :Accelerate],
  'adjective' => [3, :adjective, :Dark],
  'adverb' => [2, :adverb, :Confidently],
  'gerund' => [4, :gerund, :Grooving],
}

puts 'Enter a command: ' + commands.keys.join(' ')
selection = gets.chomp

return unless commands.key?(selection)

fn = Proc.new { |i, command, word| i.times { puts "#{command}: #{word}" }}
fn.call(*commands[selection])