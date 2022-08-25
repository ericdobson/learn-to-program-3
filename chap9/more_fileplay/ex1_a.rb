filename = "ExampleFilename.txt"
test_string = "some info"
File.open(filename, "w") do |f|
  f.write(test_string)
end
read_string = File.read(filename)
puts(read_string == test_string)
