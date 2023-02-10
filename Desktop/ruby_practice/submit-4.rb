# currencies = { japan: 'ten', us: 'dollar', india: 'rupee'}
# p currencies.keys
# currencies = { japan: 'ten', us: 'dollar', india: 'rupee'}
# p currencies.values 

# currencies = { japan: 'ten', us: 'dollar', india: 'rupee'}
# p currencies.has_key?(:japan)
# p currencies.has_key?(:italy) 


h = { us: 'dollar', india: 'rupee'} 
{ japan: 'yen', **h} 
# p h 

h = { us: 'dollar', india: 'rupee'} 
{ japan: 'yen'}.merge(h)
# p h 

def buy_burger(menu, options = {})
    p drink = options[:drink]
    p potato = options[:potato]
end 

p buy_burger('chesse', drink: true, potato: true) 

def buy_burger(menu, drink: true, potato: true, **others)
    puts others 
end

p buy_burger('fish', drink: true, potato: false, salad: true, chicken: false) 

def buy_burger(menu, drink: true, potato: true)

end

params = { drink:true, potato: false} 

p buy_burger('fish', **params)

def buy_burger(menu, options = {})
    puts options 
end 

# p buy_burger('fish', { 'drink' => true, 'potato' => false })
p buy_burger('fish', 'drink' => true, 'potato' => false) 

def buy_burger(options = {}, menu)
    puts options 
end 
p buy_burger({ 'drink' => true, 'potato' => false}, 'fish') 

a = ['fish', { drink: true, potato: false}]
p a[0]
p a[1]
p b = ['fish', drink: true, potato: false]
p b[0]
p b[1] 

def buy_burger(options = {}, menu)
    puts options 
end
p buy_burger({'drink'=> true, 'potato'=> false}, 'fish') 

def buy_burger(menu, options = {})
    puts options
end 

buy_burger 'fish', 'drink' => true, 'potato' => false


puts ({ foo: 1, bar: 2}) 

currencies = { japan: 'yen', us: 'dollar', india: 'rupee'}
p currencies.to_a 

array = [[:japan, 'yen'], [:us, 'dollar'], [:india, 'rupee']]
p array.to_h
array = [[:japan, 'yen'], [:us, 'dollar'], [:india, 'rupee']]
p Hash[array]
# p Hash[*array] 

h = Hash.new('hello')
p h[:foo] 

h = Hash.new('hello')
a = h[:foo]
b = h[:bar] 

p a.equal?(b) 

a.upcase!
p b 
p h 

h = Hash.new{'hello'} 
a = h[:foo]
b = h[:bar] 

p a.equal?(b)
a.upcase!
p a
p b 
p h 


h = Hash.new { |hash,key| hash[key] = 'hello'}
h[:foo] 
h[:bar] 
p h 


def foo(*args)
    p args 
end 

foo(x:1) 

def bar(*args, **nil)
    p args 
end 
bar({x:1})

# def foo(...)
#     bar(...)
# end 
# foo(10, 20, c:30)

# def foo(*args, **opts)
#     bar(*args, **opts)
# end 
def foo(...)
    bar(...)
end 

def bar(a, b, c: 1)
    puts "a=#{a}, b = #{b}, c= #{c}"
end 

foo(10, 20, c:30)


def foo(a, ...)
    bar(a * 100, ...)
end 

def bar(a, b, c: 1)
    puts "a=#{a}, b = #{b}, c= #{c}"
end 

foo(10, 20, c:30) 

:apple
:Apple 
:ruby_is_fun
:okay?
:welcome! 
:_select
:$dollar
:@at_mark 
:+
:==
:'12345'
:'ruby_is_fun'
:'ruby is fun'
:'()'

name = 'Alice'
p :"#{name.upcase}"

hash = { 'abc': 123 }
p hash 

p %s!ruby is fun!
p %s(ruby is fun)
p %i(apple orange melon) 

name = 'Alice'
p %i(hello\ngood-bye #{name.upcase})
p %I(hello\ngood-bye #{name.upcase}) 

# String = 'apple'
# Symbol = :apple 
# p String == Symbol
# # p String + Symbol 

# String = 'apple'
# Symbol = :apple 
# p String.to_sym 
# p String.to_sym == Symbol 

String = 'apple'
Symbol = :apple 
# p Symbol.to_s 
p Symbol.id2name 
p String == Symbol.id2name 
p String + Symbol.id2name

p 'apple'.respond_to?('include?')
p 'apple'.respond_to?(:include?)
p 'apple'.respond_to?('foo_bar')
p 'apple'.respond_to?(:foo_bar) 

p 'apple'.include?('pp')
# p 'apple'.include?(:pp) 

def foo(a, b, c = 3, d = 4, *ef, g, h, i: 9, j: 10, **kl, &block)
    "a: #{a}, b: #{b}, c: #{c}, d: #{d}, ef: #{ef}, g: #{g}, h: #{h}, i: #{i}, j: #{j}, kl: #{kl}, block: #{block} "
end
p foo(1,2,3,4,5,6,7,8, i:9, j:10, k:11, l:12){ 13 } 

def find_currency(country)
    currencies = { japan: 'yen', us: 'dollar', india: 'rupee'}
    currencies[country]
end 

def show_currency(country)
    currency = find_currency(country)
    currency&.upcase
    # if currency 
    #     currency.upcase 
    # end 
end 

p show_currency(:japan)
p show_currency(:brazil) 

a = 'foo'
p a&.upcase 



a = nil 
p a&.upcase

limit = nil
limit ||= 10 
p limit  

limit = nil 
limit ||= begin 
    a = 10
    b = 20
    p a + b 
end
limit
