puts "Enter words, one per line, pressing enter twice when finished:"
words = []
while true
  entry = gets
  if entry != "\n"
    words.push(entry.chomp)
  else
    puts words.sort.join(", ")
    puts
    break
  end
end
