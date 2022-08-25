# Set a filename variable. This is optional but can be useful.
filename = "ExampleFilename.txt"

# Create a string to test writing to a file.
test_string = "The idea is that I'll create a string, save it " +
              "to a file, read back the file, and verify that " +
              "the string I read back equals what was saved."

# Open the file and write to it. The "w" is for write-access.
File.open(filename, "w") do |f|
  f.write(test_string)
end

# Read back the file, saving the contents to a new string.
read_string = File.read(filename)

# Compare strings to verify they're identical.
puts(read_string == test_string)
