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


name = 'Alice'
a = <<-TEXT
ようこそ！#{name}さん
以下のメッセージをご覧ください
TEXT 
puts a