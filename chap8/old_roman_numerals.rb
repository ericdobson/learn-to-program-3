def write_roman(year, increment, symbol, roman)
  if year > (increment-1)
    roman += "#{symbol}"*(year/increment)
    year %= increment
  end
  [roman, year]
end

def old_roman(year)
  roman_chars = [[1000, "M"],
                 [500,  "D"],
                 [100,  "C"],
                 [50,   "L"],
                 [10,   "X"],
                 [5,    "V"],
                 [1,    "I"]]
  roman = ""
  roman_chars.each do |char|
    roman_year = write_roman(year, char[0], char[1], roman)
    roman = roman_year[0]
    year = roman_year[1]
  end

  return roman
end

print "Year: "
year = gets.chomp.to_i
puts "Old roman numeral: #{old_roman(year)}"
