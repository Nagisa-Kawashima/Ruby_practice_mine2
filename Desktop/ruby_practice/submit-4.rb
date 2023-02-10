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
