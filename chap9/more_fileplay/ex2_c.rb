require "json"
test_array = ["Eastern",
              "Central",
              "Mountain",
              "Pacific"]
test_string = test_array.to_json
filename = "exercise_2c.txt"
File.open(filename, "w") do |f|
  f.write(test_string)
end
read_string = File.read(filename)
read_array = JSON.parse(read_string)
puts(read_string == test_string)
puts(read_array == test_array)
