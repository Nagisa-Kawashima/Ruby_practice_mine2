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