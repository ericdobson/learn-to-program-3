# I got greedy and didn't commit a solid working version before I tried to get fancy.

bot_qty = 3
bot_lbl = bot_qty

def set_plural_and_article
  if @bot_qty == 1
    @plr = ""
    @art = "it"
  else
    @plr = "s"
    @art = "one"
  end
  puts "End set @plr = #{@plr}"
end

set_plural_and_article

if bot_qty < 99; puts "[…]" end

puts "Pre loop @plr = #{@plr}"

while bot_qty >= 0 do
  puts "#{bot_lbl}".capitalize + " bottle#{@plr} of beer on the wall, #{bot_lbl} bottle#{@plr} of beer."
  if bot_qty == 0
    puts "Go to the store and buy some more, 99 bottles of beer on the wall!"
    break
  else
    print "Take #{@art} down, pass it around, "
    bot_qty = bot_qty - 1
  end

  set_plural_and_article

  if bot_qty == 0
    bot_lbl = "no more"
  else
    bot_lbl = bot_qty
  end

  puts "#{bot_lbl} bottle#{@plr} of beer on the wall."
end
