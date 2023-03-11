age = 0

if age >=12 
    puts 5000
elsif  age >= 6
    puts 2500     
else  
    puts 1000

end

n = 0

unless n.zero?
    puts 'not zero'
else  
    puts 'This is Zero'
end

def herro    
    puts 'herro'
end

herro


def cry(animal)
    if animal == 'cat'
        'melow'
    elsif animal == 'dog'
        'borrow'
    else    
        '???'
    end    
end   

puts cry('dog')
puts cry('horse')





def fizz
    n = gets.to_i

    if n % 15 == 0   
        puts 'FizzBuzz'
    elsif n % 3 == 0  
       puts 'Fizz'
    else    
       puts  n.to_s    
    end     
end 

# 

fizz

def fizz_buzz
    num = 1
    while (num <= 100) do
      if num % 15 == 0    # 15の倍数のとき
        puts "FizzBuzz"
      elsif (num % 3) == 0    # 3の倍数のとき
        puts "Fizz"
      elsif (num % 5) == 0    # 5の倍数のとき
        puts "Buzz"
      else    # それ以外のとき
        puts num
      end
  
      num = num + 1
    end
  end


  fizz_buzz


  numbers = [1,2,3,4,5]

#   numbers.each do |number|    
#     puts number
#   end

  for number in numbers do   
    puts number 
  end

  scores = {luke: 100, jack: 90, robart: 70}
  scores.each do |k, v|   
    if v >= 80

        puts k,v 
    end  
  end

  number = 0
  while number  < 10  do   
    puts number
     number += 1
  end

10.upto(14) { |n| puts n}

14.downto(10) { |n| puts n }


1.step(10, 2) { |n| puts n }
10.step(1, -2) { |n| puts n }

i = 0

loop do 
    puts i   
    i += 1   
    break if  i == 10 
end

# loop do
#     while i< 10  do      
#         puts i   
#         i += 1
#     end
# end

numbers = [1,2,3,4,5]
numbers.each do |n|  
    # next if n % 2 == 0 
    # next if n.even?
    next if n.odd?
        puts n
end