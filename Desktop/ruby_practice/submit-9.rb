greeting = 'Hello world'



count = gets.to_i

count.times  do
    puts greeting 
end
# puts greeting


count = gets.to_i

count.times  do
    # puts greeting 
    name = gets.chomp   
    puts "hello #{name}"
end
# puts greeting

#入力欄に以下のように入力した場合回数分繰り返すということ
# ３
# ほげほげ
# ほげほげ
# ほげほえ


count = gets.to_i

count.times do
#   puts 'Hello world'
    number = gets.to_i
    puts number   
    
    if number == 10  
        puts "#{number}は10に等しい"
    elsif   number > 10   
        puts "#{number}は10より大きい"
    else     
        puts "#{number}は10未満"
    end
end

# 15
# 15は10より大きい
# 7
# 7は10未満

count = gets.to_i
puts count

count.times do  
    number = gets.to_i       
    if number == 0  
        puts "#{number}は0"
    elsif number > 0 
        puts "#{number}はプラス"
    else       
        puts "#{number}はマイナス"
    end
end


2.times do 
    input_line = gets
    puts input_line
end



input_line = 'Hello paiza'.chomp.split(" ")
# input_line = 
# p input_line
input_line.each do |line|    
    puts line
end
# puts "XXXXXX"


count = gets.to_i

count.times  do
    # puts greeting 
    name = gets.chomp   
    puts name
end


count = gets.to_i


name = gets.chomp.split(" ")   
puts name

input_line = gets.to_i
# puts "XXXXXX

input_line.times do        
    number = gets   
    print number
end