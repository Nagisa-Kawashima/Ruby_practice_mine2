a = []
while a.size < 5 
    a << 1
end 
puts a 

a = []
while a.size < 5 do a << 1 end 
puts a 

a = [] 
a << 1 while a.size < 5 
puts a


a = []

while false 
    a << 1
end 
p a 

begin 
    a << 1
end while false 
p a 

a = [10, 20, 30, 40, 50]
until a.size <= 3 
    a.delete_at(-1)
end
p a 

numbers = [1,2,3,4]
# sum = 0
# for n in numbers 
#     sum += n  
# end 
# p sum 

sum = 0 
for n in numbers do sum += n end 
p sum 

numbers = [1,2,3,4] 
sum = 0
numbers.each do |n|
    sum += n 
end 
p sum 


numbers = [1,2,3,4]
sum = 0
numbers.each do |n|
    sum_value = n.even? ? n * 10 : n  
    sum += sum_value 
end 
p n 
# p sum_value 

numbers = [1,2,3,4]
sum = 0
for n in numbers 
    sum_value = n.even? ? n * 10 : n 
    sum += sum_value 
end 
p n 
p sum_value 

numbers = [1,2,3,4,5]
loop do 
    n = numbers.sample 
    puts n 
    break if n == 5 
end 

numbers = [1,2,3,4,5]
while true 
    n = numbers.sample 
    puts n 
    break if n == 5
end 


def factorial(n)
    n > 0 ? n * factorial(n - 1) : 1
end 
p factorial(5)
p factorial(0) 

def factorial(n)
    ret = 1 
    (1..n).each { |n| ret *= n }
    p ret 
end 
factorial(5)
factorial(0) 

p (1..4).map { |n| n * 10 } 

p 1.upto(5).select { |n| n.odd? } 

p [1,2,3].class 
p Array.include?(Enumerable)

p (1..3).class
p Range.include?(Enumerable)

p 1.upto(3).class
p Enumerator.include?(Enumerable) 

numbers = [1,2,3,4,5].shuffle 
numbers.each do |n|
    puts n 
    break if n == 5
end 

numbers = [1,2,3,4,5].shuffle 
i = 0
while i < numbers.size 
    n = numbers[i]
    puts n 
    break if n == 5 
    i += 1
end 

ret = 
    while true
        break
    end 
p ret 

ret = 
    while true
        break 123
    end 
p ret 

fruits = ['apple', 'melon', 'orange'] 
numbers = [1,2,3] 

fruits.each do |fruit|
    numbers.shuffle.each do |n|
        puts "#{fruit}, #{n}"
        break if n == 3
    end 
end 

fruits = ['apple', 'melon', 'orange'] 
numbers = [1,2,3] 

catch :done do
    fruits.shuffle.each do |fruit|
        numbers.shuffle.each do |number|
            puts "#{fruit}, #{number}"
            if fruit == 'orange' && number == 3
                throw :done 
            end
        end
    end
end 

ret = 
    catch :done do 
        throw :done 
    end 
p ret
ret = 
    catch :done do 
        throw :done, 111 
    end 
p ret

def greet(country)
    return 'countryを入力してください' if country.nil? 
    if country == 'japan'
        'こんにちは'
    else 
        'hello' 
    end 
end

p greet(nil)
p greet("hoge") 

def calc_with_break 
    numbers = [1,2,3,4,5,6]
    target = nil
    numbers.shuffle.each do |n|
        target = n  
        break if n.even? 
    end 
    target * 10
end
p calc_with_break

def calc_with_break 
    numbers = [1,2,3,4,5,6]
    target = nil
    numbers.shuffle.each do |n|
        target = n  
        return if n.even? 
    end 
    target * 10
end
p calc_with_break 

numbers = [1,2,3,4,5]
numbers.each do |n|
    next if n.even?
    puts n 
end 

numbers = [1,2,3,4,5]
i = 0
while i < numbers.size 
    n = numbers[i]
    i += 1
    next if n.even?
    puts n 
end

fruits = ['apple', 'melon', 'orange']
numbers = [1,2,3,4]
fruits.each do |fruit|
    numbers.each do |n|
        next if n.even?
        puts "#{fruit}, #{n}"
    end 
end 


foods = ['ピーマン', 'トマト', 'セロリ']
foods.each do |food|
    print "#{food}は好きですか=>"
    answer = ['はい', 'いいえ'].sample
    puts answer

    redo unless answer == 'はい'
end 

foods = ['ピーマン', 'トマト', 'セロリ']
count = 0 
foods.each do |food|
    print "#{food}は好きですか？=>"
    answer = 'いいえ'
    puts answer 

    count += 1
    redo if answer != 'はい' && count < 2
    
    count = 0 
end

