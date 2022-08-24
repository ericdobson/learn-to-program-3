print "Enter a starting year:\n> "
start_year = gets.to_i
print "Enter an ending year:\n> "
end_year = gets.to_i

check_year = start_year
leap_years = 0

(end_year - start_year + 1).times do
  if check_year % 4 != 0
    # puts "#{check_year}: no"
  elsif check_year % 400 != 100 && check_year % 400 != 200 && check_year % 400 != 300
    # puts "#{check_year}: yes"
    leap_years += 1
  else
    # puts "#{check_year}: no"
  end
  check_year += 1
end

puts
puts "Number of leap years from #{start_year} to #{end_year} inclusive: #{leap_years}"
puts
