while true
  puts "What would you like to ask C to do?"
  request = gets.chomp
  family = ["Papa", "Mama", "Ruby"]

  puts "You say: C, please #{request}."

  puts "C responds:"
  puts "  C #{request}."
  family.each do |name|
    puts "  #{name} #{request}, too."
  end
  puts

  if request == "stop"
    break
  end
end
