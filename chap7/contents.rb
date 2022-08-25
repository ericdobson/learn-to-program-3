line_width = 50
chapters = [[1, "Numbers", 1],
            [2, "Letters", 5],
            [3, "Variables", 9],
            [4, "Conversions", 15],
            [5, "Methods", 21],
            [6, "Flow Control", 29]]

puts("Table of Contents".center(line_width))
puts

chapters.each do |chap|
  puts("Chapter #{chap[0]}: #{chap[1]}".ljust(line_width/2) + "page #{chap[2]}".rjust(line_width/2))
end
