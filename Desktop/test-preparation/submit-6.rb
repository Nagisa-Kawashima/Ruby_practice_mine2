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