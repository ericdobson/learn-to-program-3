$input = nil
count = 0

def reset_bye_count
  $bye_count = 0
end

def get_input
  print "> "
  $input = gets.chomp
end

while true
  count = count + 1

  if $input == nil
    # Grandma welcomes you
    reset_bye_count
    puts "Come here and talk with your granny!"
    get_input
  elsif $input != $input.upcase
    # Speak up
    reset_bye_count
    puts "HUH?! SPEAK UP, SONNY!"
    get_input
  elsif $input == "BYE"
    if $bye_count < 2
      puts "It's so great to have you here!".upcase
      $bye_count += 1
    get_input
    else
      puts "Alright then, goodbye!".upcase
      break
    end
  else
    # not since year
    reset_bye_count
    puts "NO, NOT SINCE #{rand(21) + 1930}!"
    if count > 4 then puts "(yell \"bye\" to end the visit)"; end
    get_input
  end
end
