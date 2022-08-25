require "json"
test_array = ["violin",
              "viola",
              "cella",
              "bass"]
test_string = test_array.to_json
filename = "exercise_2_json.txt"
File.open(filename, "w") do |f|
  f.write(test_string)
end
read_string = File.read(filename)
read_array = JSON.parse(read_string)
print "written and read json data matches: "
puts(read_string == test_string)
print "written and read arrays match: "
puts(read_array == test_array)
