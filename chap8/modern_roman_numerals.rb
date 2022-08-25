def new_roman(year)
  new_roman = ""
  new_roman += "M"*(year/1000)
  year %= 1000
  if year/100 == 9
    new_roman += "CM"
    year -= 900
  end
  if year/500 == 1
    new_roman += "D"
    year -= 500
  end
  if year/100 == 4
    new_roman += "CD"
    year -= 400
  end
  if year/100 < 4
    new_roman += "C"*(year/100)
    year %= 100
  end
  if year/10 == 9
    new_roman += "XC"
    year -= 90
  end
  if year/50 == 1
    new_roman += "L"
    year -= 50
  end
  if year/10 == 4
    new_roman += "XL"
    year -= 40
  end
  if year/10 < 4
    new_roman += "X"*(year/10)
    year %= 10
  end
  if year/1 == 9
    new_roman += "IX"
    year -= 9
  end
  if year/5 == 1
    new_roman += "V"
    year -= 5
  end
  if year/1 == 4
    new_roman += "IV"
    year -= 4
  end
  if year < 4
    new_roman += "I"*year
    year %= 1
  end
  # puts "Years remaining: #{year}"
  new_roman
end

print "Year: "
year = gets.chomp.to_i
puts "Modern roman numeral: #{new_roman(year)}"
