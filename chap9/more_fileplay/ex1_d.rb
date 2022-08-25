filename = "exercise_1d.txt"
test_string = "I'm sure it could use some review, but I'm now able to " +
              "type this without reference to the text."
File.open(filename, "w") do |f|
  f.write(test_string)
end
read_string = File.read(filename)
puts(read_string == test_string)
