require "json"
test_array = ["Senior",
              "Junior",
              "Second",
              "Third"]
test_string = test_array.to_json
filename = "exercise_2b.txt"
File.open(filename, "w") do |f|
  f.write(test_string)
end
read_string = File.read(filename)
read_array = JSON.parse(read_string)
puts read_string
puts test_string
puts read_array.join(", ")
puts test_array.join(", ")
