require "json"
test_array = ["Soprano",
              "Alto",
              "Tenor",
              "Bass"]
test_string = test_array.to_json
filename = "exercise_2a.txt"
File.open(filename, "w") do |f|
  f.write(test_string)
end
read_string = File.read(filename)
read_array = JSON.parse(read_string)
puts(read_string == test_string)
puts(read_array == test_array)
