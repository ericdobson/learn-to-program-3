# This isn't in the book. I just wanted a faster way to reset
# the file list for repeated testing.
Dir.glob("*.txt").each { |f| File.delete(f) }
Dir.glob("*.markdown").each { |f| File.delete(f) }
