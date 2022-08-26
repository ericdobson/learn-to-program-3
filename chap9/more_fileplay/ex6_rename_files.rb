file_names = Dir["*.txt"]
file_number = 1
file_names.each do |f|
  sleep 0.01
  print "."
  File.rename(f, "#{file_number}.markdown")
  file_number += 1
end
