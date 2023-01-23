def greet(country = 'japan')
    if country == 'japan'
        'こんにちは'
    else
        'hello'
    end
end

p greet 
p greet('us') 

def default_args(a, b, c = 0, d = 0)
    "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
end 

p default_args(1, 2)
p default_args(1, 2, 3)
p default_args(1, 2, 3, 4)


def foo(time = Time.new, message = bar)
    puts "time: #{time}, message: #{message}"
end

def bar 
    'BAR'
end

p foo

p ''.empty?
p 'abc'.empty?

p 'watch'.include?('at')
p 'watch'.include?('in')

def multiple_of_three?(n)
    n % 3 == 0
end

p multiple_of_three?(4)
p multiple_of_three?(5)
p multiple_of_three?(6) 

a = 'ruby'

p a.upcase 
p a  
p a.upcase! 
p a 

def reverse_upcase(s)
    s.reverse.upcase 
end 

def reverse_upcase!(s)
    s.reverse
    s.upcase 
    s 
end 
s='ruby' 


def greet = 'Hello!'
p greet 

def add(a, b) = a + b 
p add(1, 2) 

a = 
    if true 
        '真です'
    else 
        '偽です'
    end 
p a  

b = def fooo; end 
p b  

a = 'hello'
b = 'hello'

p a.object_id 
p b.object_id 
 

c = b 
p c.object_id 

def m(d)
    d.object_id
end 

p m(c) 
p a.equal?(b)
p b.equal?(c)

a = 'hello'
b = 'hello'
c = b 

def m!(d)
    d.upcase! 
end 
p m!(c) 

p b
p c 
# p d 
p a 

p [].class
a = [
    1,
    2,
    3
]

a = [
    1,
    2,
    3,
]

a = [1, 'apple', 2, 'orange', 3, 'melon'] 

a =[[10, 20, 30],[40, 50, 60],[70, 80, 90]]

a = [1,2,3]
p a[0]
p a.size 
p a.length 

a = [1,2,3]
a[4] = 50 
p a

a = []
a << 1
a << 2
a << 3 
p a 

a = [1,2,3]
a.delete_at(1)
p a 

a.delete_at(100)
p a 


a, b = 1, 2
a, b = [1,2]
p a 
p b 

c,d= [10] 
p c 
p d 
e,f = [100, 200, 300]
p e 
p f

p 14.divmod(3) 

quo_rem = 14.divmod(3)
p "商=#{quo_rem[0]}, 余り=#{quo_rem[1]}"

quo_rem = 14.divmod(3) 
p "商=#{quo_rem[0]}, 余り=#{quo_rem[1]}"

quoient, remainder = 14.divmod(3)
p "商#{quoient}, 余り#{remainder}" 

a = [1,2,3,1,2,3]
a.delete(2)
p a 

a = [1,2,3,1,2,3]
a.delete_if do |n|
    p n.odd? 
end 
p a 


numbers = [1,2,3,4,5]
sum = 0 


numbers.each do |i|
    sum += i 
end 
p sum
# puts sum

# numbers.each do |number|
#     sum += number 
# end 

# numbers.each do |element|
#     sum += element 
# end 


numbers = [1,2,3,4]
sum = 0
numbers.each do |n| 
    sum_value = n.even? ? n * 10 : n  
     sum += sum_value 
end  

p sum  
# p sum_value 

numbers = [1,2,3,4]
sum = 0 
sum_value = 100 

numbers.each do |sum_value|
    sum += sum_value 
end 
p sum  
p sum_value

numbers = [1,2,3,4] 
sum = 0 
numbers.each do |n| sum += n end 
 p sum  
numbers = [1,2,3,4] 
sum = 0 
numbers.each { |n|
 sum += n 
} 
p sum

numbers = [1,2,3,4,5]
new_numbers = [] 
numbers.each { |n| new_numbers << n * 10 }
p new_numbers  

numbers = [1,2,3,4,5]
new_numbers = numbers.map { |n| n * 10 } 
p new_numbers
numbers = [1,2,3,4,5]
new_numbers = numbers.collect { |n| n * 10 } 
p new_numbers 

numbers = [1,2,3,4,5]
even_numbers = numbers.select { |n| n.even? } 
p even_numbers 
numbers = [1,2,3,4,5]
even_numbers = numbers.find_all { |n| n.even? } 
p even_numbers 


numbers = [1,2,3,4,5,6] 
non_multiples_of_three = numbers.reject { |n| n % 3 == 0 }
p non_multiples_of_three 

numbers = [1,2,3,4,5,6] 
even_number = numbers.find { |n| n.even? }
p even_number  
numbers = [1,2,3,4,5,6] 
even_number = numbers.detect { |n| n.even? }
p even_number  


numbers = [1,2,3,4]
p numbers.sum

numbers = [1,2,3,4] #2, 4, 6, 8
p numbers.sum { |n| n * 2 }  

chars = ['a', 'b', 'c']
p chars.sum("")
p chars.sum(' ')
p chars.sum('..')

chars = ['a', 'b', 'c'] 
p chars.join 

chars = ['a', 'b', 'c'] 
p chars.join('-')  

data = ['a', 2, 'b', 4] 
p data.join 

chars = ['a', 'b', 'c'] 
p chars.sum('>') { |c| c.upcase }
p chars.sum('///?') { |c| c.upcase } 


array =['ruby', 'java', 'python'].map { |s| s.upcase } 

p array 

arrays =['ruby', 'java', 'python'].map(&:upcase) 
p arrays 

array1 =[1,2,3,4,5,6].select { |n| n.odd? } 
p array1
array2 = [1,2,3,4,5,6].select(&:odd?) 
p array2 


array3 =[1,2,3,4,5,6].select { |n| n % 3 == 0 }
p array3
array4 = [9,10,11,12].map { |n| n.to_s(16) }
p array4



array5 =[1,2,3,4].map do |n| 
    m = n * 4 
    m.to_s 
end 
p array5

p (1..5).class
p (1...5).class

range = 1..5
p range.include?(0)
p range.include?(1)
p range.include?(4.9)
p range.include?(5)
p range.include?(6)

range = 1...5
p range.include?(0)
p range.include?(1)
p range.include?(4.9)
p range.include?(5)
p range.include?(6)

p (1..5).include?(1)
