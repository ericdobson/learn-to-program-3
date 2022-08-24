max = 10000000 * 10000000
low = max
high = 0
line_width = 15

100000000.times do |i|
  num = rand(max) + 1
  if num < low
    low = num
  end
  if num > high
    high = num
  end
  if (i % 1000000) == 0
    puts "try: #{i/1000000}mm".ljust(line_width) + "low: #{low}".center(line_width) + "high: #{high}".rjust(line_width)
  end
end
