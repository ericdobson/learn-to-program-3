flavors = ["vanilla",
           "chocolate",
           "rhubarb",
           "strawberry",
           "banana",
           "key lime",
           "lemon",
           "rocky road",
           "cookies 'n' cream",
           "butterfinger",
           "pistachio"]

round = 1

def ask_for_winner(flavors, round, final)
  unless final == true
    puts "ROUND #{round}: Which flavor is best?"
  else
    puts "CHAMPIONSHIP MATCH!"
    puts "Which flavor is best?"
  end

  puts "0. "+flavors[0]
  puts "1. "+flavors[1]
  while true
    answer = gets.chomp.downcase
    if (answer == "0" || answer == "1")
      return flavors[answer.to_i]
    else
      puts "Please answer '0' or '1'."
    end
  end
end

puts "Welcome to ULTIMATE FLAVOR TOURNAMENT!"
puts

while flavors != []
  match = [flavors.pop, flavors.pop]

  winner = ask_for_winner(match, round, flavors == [])

  if flavors != []
    flavors.unshift(winner)
    round +=1
  else
    puts "Winner: #{winner.upcase}!!!"
  end
end
