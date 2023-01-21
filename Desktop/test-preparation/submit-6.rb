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