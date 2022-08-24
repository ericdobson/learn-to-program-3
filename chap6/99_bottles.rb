# not finished

100.times do |i|
  if i != 99
    bottles = 99 - i
  else
    bottles = "no"
  end

  if i != 98
    bot_str = "bottles"
  else
    bot_str = "bottle"
  end

  print "#{bottles}".capitalize + " #{bot_str} of beer on the wall, "
  puts "#{bottles} #{bot_str} of beer,"
  print "take one down, pass it around, "
  puts "#{bottles - 1} #{bot_str} of beer on the wall."
end
