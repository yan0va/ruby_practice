File.open("hello_from_ruby.txt", "w+") { |f| f.write("A journey of a thousand miles begins with a single step.") }
end

File.open("hello_from_ruby.txt", "a+") do |f| 
  # we ask user for command 
  puts "What would you like to do with this file today? (save / read / introspect)"
  command = gets.chomp.downcase
  if command == "save"
    # we ask user what to save and then write the changes to a text file
    puts "Enter stuff"
    f.puts gets.chomp
  elsif command == "read"
    # we print content of a text file on the screen
    puts f.readlines
  elsif command == "introspect"
    # introspect opens a textfile with the program itself and streams it to the screen line by line
    File.open($0, "r") { |prog| puts prog.readlines }
  end
end