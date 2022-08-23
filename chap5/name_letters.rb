puts "What is your first name?"
first = gets.chomp
puts "Hello, #{first}! What is your last name?"
last = gets.chomp
puts "Thanks!\nDid you know there are #{first.length + last.length} letters in your name, #{first} #{last}?"
