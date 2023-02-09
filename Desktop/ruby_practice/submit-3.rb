p {}.class 

{'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
{
    'japan' => 'yen', 
    'us' => 'dollar', 
    'india' => 'rupee',
}

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
currencies['italy'] = 'euro'
p currencies

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
p currencies['india']

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
currencies.each do |key, value|
    puts "#{value}:#{key}"
end

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
currencies.each do |key_value|
    key = key_value[0]
    value = key_value[1]
    # puts "#{key}: #{value}"
    puts "#{value}:#{key}"

end


a = { 'x' => 1, 'y' => 2, 'z' => 3}
b = { 'x' => 1, 'y' => 2, 'z' => 3} 
p a == b

c = { 'y' => 2, 'z' => 3, 'x' => 1}
p a == c 

d = { 'x' => 10, 'y' => 2, 'z' => 3}
p a == d


d = { 'x' => 10, 'y' => 2, 'z' => 3}.size 
p d

# p {}.size

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
currencies.delete('japan')
p currencies

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
p currencies.delete('italy')
p currencies

p currencies.delete('italy'){ |key| "Not found: #{key}"}

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
p currencies.delete('yen') #値を入れるとnilが返る

:apple
:japan 
:ruby_is_fun 

p :apple.class 
p 'apple'.class 

p :apple.object_id
p :apple.object_id
p :apple.object_id 

p 'apple'.object_id
p 'apple'.object_id
p 'apple'.object_id 

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
p currencies['rupee']

status = :done 

case status 
when :todo 
    p 'これからやってます'
when :doing 
    p '今やってます'
when :done 
    p 'もう終わりました'
end 

currencies = {:japan => 'yen', :us => 'dollar', :india => 'rupee'}
p currencies[:us] 
currencies[:italy] = 'hogehoge'
p currencies 


# currencies = {:japan => 'yen', :us => 'dollar', :india => 'rupee'}
currencies = { japan: 'yen', us: 'dollar', india: 'rupee'}
p currencies[:india] 

currencies = { japan: :yen, us: :dollar, india: :rupee}
p currencies 

currencies = { :japan => :yen, :us => :dollar, :india => :rupee}
p currencies


person = {
    name: 'Alice',
    age: 20,
    friends: ['Bob', 'Carol'],
    phones: { home: '1234-0000', mobile: '5678-0000'}
}

p person[:age]
p person[:friends]
p person[:phones][:mobile]
p person[:phones] 


# if buy_burger(menu, drink:, potato:)
#     if drink
#         p 'drink買った'
#     end 
#     if potato 
#         p 'potato買った'
#     end 
# end 

# buy_burger('cheese', drink: true, potato: true)