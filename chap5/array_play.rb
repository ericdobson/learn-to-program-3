line_width = 50
chapters = [["1: Numbers",1],
            ["2: Letters",5],
            ["3: Variables",9],
            ["4: Equations",14],
            ["5: Refactoring",21],
            ["6: Mindfulness",33]]
puts("Table of Contents".center(line_width))
puts
chapters.each do |x|
  puts("Chapter #{x[0]}".ljust(line_width/2) + "page #{x[1]}".rjust(line_width/2))
end
