input = nil
count = 0

while true
  count = count + 1

  if input == nil
    # Grandma welcomes you
    puts "Come here and talk with your granny!"
    input = gets.chomp
  elsif input != input.upcase
    # Speak up
    puts "HUH?! SPEAK UP, SONNY!"
    input = gets.chomp
  elsif input == "BYE"
    puts "GOODBYE!"
    break
  else
    # not since year
    puts "NO, NOT SINCE #{rand(21) + 1930}!"
    if count > 4 then puts "(yell \"bye\" to end the visit)"; end
    input = gets.chomp
  end
end
