txt_names = Dir["*.txt"]
txt_number = 1

txt_names.each do |name|
  sleep 0.01
  print "." # This is our "progress bar"
  filename = "#{txt_number}.markdown"
  if File.exist?(filename)
    puts
    puts "Error: file with name #{filename} already exists"
    exit
  else
    File.rename(name, filename)
    txt_number += 1
  end
end
