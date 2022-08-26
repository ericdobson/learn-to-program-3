require "json"

def json_save(object, filename)
  File.open(filename, "w") do |f|
    f.write(object.to_json)
  end
end

def json_load(filename)
  json_string = File.read(filename)
  JSON.parse(json_string)
end

test_array = ["King",
              "Queen",
              "Bishop",
              "Knight",
              "Rook",
              "Pawn"]
filename = "exercise_3c.txt"
json_save(test_array, filename)
read_array = json_load(filename)
puts(read_array == test_array)
