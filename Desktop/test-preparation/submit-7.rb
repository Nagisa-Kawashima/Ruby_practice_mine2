a = [1,2,3,4,5] 
p a[1,3] 

a = [1,2,3,4,5] 
p a.values_at(0,2,4) 

a = [1,2,3] 
p a[a.size - 1]
p a[a.size - 2]
p a[a.size - 3] 

a = [1,2,3] 
p a.last 
p a.last(2) 
p a[-2]
p a[-2, 2]  

a = [1,2,3] 
p a.first 
p a.first(2)

a = [1,2,3]
p a[-3] = -10 
# p a[-4] = -10 
p a  

a = [1,2,3,4,5]
p a[1,3] = 100 
p a  

a = [] 
p a.push(1)
p a.push(2, 3)
p a  


a = [1,2,3,1,2,3] 
p a.delete(2) 
p a 

a = [1]
b = [2,3] 
p a.concat(b) 
p a 
p b 

a = [1]
b = [2,3] 
p a + b


a = [1,2,3] 
b = [3,4,5] 

p a | b

a = [1,2,3] 
b = [3,4,5] 
p a - b 

a = [1,2,3] 
b = [3,4,5] 
p a & b


require 'set'
a = Set[1,2,3]
b = Set[3,4,5] 

p a | b 
p a - b 
p a & b

e, f = 100, 200, 300 
p e 
p f 

e, *f = 100, 200, 300 
p e 
p f

e, * = 100, 200, 300 
p e  

e, = 100, 200, 300 
p e  


a, *b, c, d = 1,2,3,4,5 
p a
p b
p c
p d 

a, *b, c, d = 1,2,3 
p a
p b
p c
p d 


a = [] 
b = [2,3]
p a.push(1) 
# p a.push(b) 
p a.push(*b)
p a  

jp = ['japan', '日本']
country = '日本'
case country
when *jp 
    p 'こんにちは'
end 


def greet(*names)
    "#{names.join('と')},こんにちは！"
end 

p greet('田中さん') 
p greet('田中さん', '鈴木さん', '佐藤さん')

a, *b, c, d = 1,2,3,4,5
p a 
p b
p c
p d  

def foo(a, *b, c, d)
    p "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
end 


foo(1,2,3,4,5) 

a = [1,2,3] 
p [a] 
p [*a] 

a = [1,2,3,4]
p [-1, 0, *a, 4, 5] 

a = [1,2,3] 
p [-1, 0] + a + [4,5]

p [1, 2, 3] == [1, 2, 3]
p [1, 2, 3] == [1, 2, -3]
p [1, 2, 3] == [1, 2, 3, 4, 5]
 
p ['apple', 'melon', 'orange']

p %W!apple melon orange  !
p %W(apple melon orange)
p %w(apple melon orange)
p %W(
    apple
    melon
    orange
) 

p %W(big\ apple small\ melon orange) 

prefix = 'This is'
p %W(#{prefix}\ an\ apple small \nmelon orange) 


puts %q!He said, "Don't speak."! 


p 'Ruby'.chars 

p "ruby, java, python".split(',') 


a = Array.new(6, 3) 
p a 

a = Array.new(10) { |n| n % 3 + 1} 
p a