filename = "exercise_1b.txt"
test_string = "third time"
File.open(filename, "w") do |f|
  f.write(test_string)
end
read_string = File.read(filename)
puts read_string
puts test_string
