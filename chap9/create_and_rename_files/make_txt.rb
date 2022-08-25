require "json"

100.times do |i|
  sleep 0.01
  print "."
  filename = "#{i+1}.txt"
  if File.exist?(filename)
    puts
    puts "Error: file named #{filename} already exists"
    exit
  else
    File.open(filename, "w") do |f|
      f.write("".to_json)
    end
  end
end
