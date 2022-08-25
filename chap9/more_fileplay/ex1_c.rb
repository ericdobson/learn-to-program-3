filename = "exercise_1c.txt"
test_string = "exercise one cee"
File.open(filename, "w") do |f|
  f.write(test_string)
end
read_string = File.read(filename)
puts(read_string == test_string)
