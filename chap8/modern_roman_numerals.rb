def write_nines(str_year, factor)
  # puts "write_nines input: #{str_year}, #{factor}" # debug
  values = {100 => "CM", 10 => "XC", 1 => "IX"}
  str = str_year[0]
  year = str_year[1]
  if year/factor == 9
    str += values[factor]
    year -= (9 * factor)
  end
  # puts "write_nines output: #{str}, #{year}" # debug
  [str, year]
end

def write_fives(str_year, factor)
  values = {100 => "D", 10 => "L", 1 => "V"}
  str = str_year[0]
  year = str_year[1]
  if year/(factor * 5) == 1
    str += values[factor]
    year = str_year[1] -= (5 * factor)
  end
  [str, year]
end

def write_fours(str_year, factor)
  values = {100 => "CD", 10 => "XL", 1 => "IV"}
  str = str_year[0]
  year = str_year[1]
  if year/factor == 4
    str += values[factor]
    year -= (4 * factor)
  end
  [str, year]
end

def write_singles(str_year, factor)
  values = {100 => "C", 10 => "X", 1 => "I"}
  str = str_year[0]
  year = str_year[1]
  if year/factor < 4
    str += values[factor]*(year/factor)
    year %= factor
  end
  [str, year]
end

def write_places(year, factor)
  output = ["", year]
  if factor == 1000
    output[0] = "M"*(year/1000)
  else
    output = write_nines(output, factor)
    output = write_fives(output, factor)
    output = write_fours(output, factor)
    output = write_singles(output, factor)
  end
  output[0].to_s
end

def new_roman(year)
  new_roman = ""
  factors = [1000, 100, 10, 1]
  factors.each do |factor|
    new_roman += write_places(year, factor)
    year %= factor
  end
  new_roman
end

print "Year: "
year = gets.chomp.to_i
puts "Modern roman numeral: #{new_roman(year)}"
