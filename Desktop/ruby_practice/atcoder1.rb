# input_line = gets
#  input_line.upcase!

#  puts input_line


input = gets   
array = input.chomp.split("")

array.each do |line|  
    # p line
    # if line == line.include?("Z") 
    if (A..Z).cover?(line) then

        puts line
    else     
        puts "sdsdsd"
    end

end