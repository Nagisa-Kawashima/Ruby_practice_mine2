puts 1 + 2

a = 'Hello, world!'
puts a
b = 'こんにちは'
puts b

first_name,last_name = 'Scott Tiger'.split(' ')
p first_name

first_name, _ = 'Scott Tiger'.split(' ')
p first_name

a = b = 'hello'
p a.upcase!
p b  #ｂも大文字になってしまう

c = 'hello'
d = 'hello'
p c.upcase!
p d

name = 'Alice'
puts "Hello,#{name}"

i = 10
puts "#{i}は16進数にすると#{i.to_s(16)}です"

puts "こんにちは\\nさようなら"

name = 'alice'
puts "hello, \#{name}!"

puts 'He said, "Don\'t speak."'

puts "He said, \"Don't speak.\""

num =1 + '10.5'.to_f
p num 

# data = find_data  
# if data 
#     'データあります'
# else
#     'データはありません'
# end

t1 = true
t2 = true
f1 = false
f2 = false
p t1 && t2 || f1 && f2
p (t1 && t2) || (f1 && f2)

country = 'italy'
if country == 'japan'
    puts 'こんにちは'
elsif country == 'us'
    puts 'Hello'
elsif country == 'italy'
    puts 'Ciao'
else
    puts '???'
end

country = 'italy'
greeting =
    if country == 'japan'
        'こんにちは'
    elsif country == 'us'
        'hello'
    elsif country == 'italy'
        'Ciao'
    else
        '???'
    end
greeting

point = 7
day = 1
if day == 1
    point *= 5
end

p point


point = 7
day = 1

point *= 5 if day == 1
p point


country = 'italy'
# country =
if country == 'japan' then 'こんにちは'
elsif country == 'use' then 'Hello'
elsif country == 'itary' then 'Ciao'
else '???'
end
p country


def greet(country)
    if country == 'japan'
        'こんにちは'
    else
        'hello'
    end
end
p greet('japan')
p greet('us')


def greet country
    return 'countryを入力してください' if country.nil?
    if country == 'japan'
        'こんにちは'
    else
        'hello'
    end

    
end

p greet(nil)
p greet('japan')


def fizz_bazz(n)
    n.to_s  
end

puts fizz_bazz(1)
puts fizz_bazz(2)


def fizz_bazz(n)
    if n%15 == 0
        'FizzBuzz'
    elsif n%3 == 0
        'Fizz'
    elsif n % 5 == 0
        'Buzz'
    else
        n.to_s  
    end
end


puts fizz_bazz(1)
puts fizz_bazz(2)
puts fizz_bazz(3)
puts fizz_bazz(4)
puts fizz_bazz(5)
puts fizz_bazz(6)
puts fizz_bazz(15)

puts %q! he said, "Don't speak"!
something = "bye"
puts %! he said, "#{something}"!

puts %q?he said, "Don't speak."?
puts %q{he said, "Don't speak."}

puts 'He said, "Don\'t speak"'
something = "hello"
puts "he said , \"#{something}\""

something = "bye"
puts "he said, \"#{something}\""

puts "Line 1,
Line 2"

puts 'line 1,
Line 2'

a = <<TEXT 
aaaaaaaaaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa 
TEXT
puts a


# <<HTML 
# <div>
#     <img src= "samle.jpg">
# </div>
# HTML 


def some_method 
    <<-TEXT
    aaaaaaaaaaaaaaaaaaaaaaaaaaaaa
    aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
    TEXT
end
def some_method 
    <<~TEXT
    aaaaaaaaaaaaaaaaaaaaaaaaaaaaa
    aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
    TEXT
end


puts some_method


def some_method
    <<~TEXT
    \ aaaaaaaaaaaaaaaaaaaaaaaaa
    \ aaaaaaaaaaaaaaaaaaa
    TEXT
end
puts some_method


# name = 'Alice'
# a = << TEXT
# ようこそ！#{name}さん
# 以下のメッセージをご覧ください
# TEXT 
# puts a

# nums = 1*2÷3+4*5÷6+7*8÷9..+19999*20000÷20001
# 19999.times{|num|
# puts nums
# }


# for num in 1*2÷3+4*5÷6+7*8÷9..+19999*20000÷20001 do
#     puts num
# end

# a = <<TEXT
# こんにちはこんにちは
# TEXT
# puts a

a = <<"TEXT"
こんにちはこんにちは
TEXT
puts a


p sprintf('%0.3f', 1.2)


# name = 'Alice'
# a = <<TEXT
# ようこそ、#{name}さん！
# 以下のメッセージをご覧ください
# TEXT 
# puts a  


# a = <<TEXT
# こんにちは\nさようなら
# TEXT 
# puts a


p '%0.3f' %1.2

p sprintf('%0.3f + %0.3f', 1.2, 0.48)

p '%0.3f + %0.3f' %[1.2, 0.48]


p 123.to_s

p [10, 20, 30].join

p 'Hi' *10

p String.new('hello')
p 'abc' 'def'
p 'abc''def'


p "\u3042\u3044\u3046"

puts "\u0041"
p "\u{41}"

p 'a'
p 'abc'
p '' 
p ?a

p 0b11111111
p 0377
p 0o377
p 0xff
p 0d255

p sprintf '%#b', (0b100 & 0b1100)

p 2e-3
p 10.class 
p 1.1.class


r = 2 / 3r 
p r 
p r.class


r = '2/3'.to_r 
p r 
r.class 

c = 0.3 - 0.5i 
p c 
p c.class


status = 'error' 
unless status == 'ok'
    p '何か異常があります'
end

status = 'ok'
unless status == 'ok'
else 
    p '正常です'
end

status = 'error'
message = 
    unless status == 'ok'
        '何か異常があります'
    else
        '正解です'
    end

p message


p '何か異常があります'unless status == 'ok'

status = 'error'
unless status == 'ok' then 
   p '何か異常があります'
end

s = ''
if s.empty?
    '空文字列です'
end

n = 123 
if !n.zero? 
    'ゼロではありません'
end

user = nil 
if !user 
   p 'nilです'
end

if user.nil? 
    p 'nilです'
end
unless user
    p 'nilです'
end


some_value = true 
if some_value == true 
    p'trueそのものです'
end