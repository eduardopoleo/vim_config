File.open('/home/eduardo/Desktop/text_file.txt', "r") do |file|
  file.each_line do |line|
    puts line
    puts "\n"
  end
end
