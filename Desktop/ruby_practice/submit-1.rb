fruits = ['apple', 'orange', 'melon']
p fruits.each
p fruits.map 
p fruits.delete_if 

fruits.each.with_index(1){ |fruits, i| puts"#{i}: #{fruits}"}
fruits.map.with_index(10){ |fruits, i| puts"#{i}:#{fruits}"}
# puts fruits

# dimensions = [
#     [10, 20],
#     [30, 40],
#     [50, 60],
# ]
# areas = []
# dimensions.each do |dimension|
#     length = dimension[0]
#     width = dimension[1]
#     areas << length * width
# end 
# p areas  

# dimensions = [
#     [10, 20, 100],
#     [30, 40, 200],
#     [50, 60, 399],
# ]


# areas = []
# dimensions.each do |length, width|
#     areas << length * width
# end 
# p areas


# dimensions.each do |length, width, foo, bar|
#     # areas << length * width 
#     p [length, width, foo, bar]
# end 


# dimensions.each do |length, width|
#     # areas << length * width 
#     p [length, width]
# end 

dimensions = [
    [10, 20],
    [30, 40],
    [50, 60],
] 

dimensions.each {p _1}
dimensions.each {puts "#{_1} / #{_2}"}
# dimensions.each_with_index do |length, width, i|
#     puts "length: #{length}, width: #{width}, i: #{i}"
# end

# dimensions.each_with_index do |dimension, i|
#     length = dimension[0]
#     width = dimension[1]
#     puts "length: #{length}, width:#{width}, i:#{i}"
# end
# dimensions.each_with_index do |(length, width), i|

#     puts "length: #{length}, width:#{width}, i:#{i}"
# end  

# dimension, i =[[10, 20], 0]
# p dimension
# p i

# (length, width), i = [[10, 20], 0]
# p length
# p width 
# p i 

# p ['1', '20', '300'].map { |s| s.rjust(3, '0')}
# p ['1', '20', '300'].map { _1.rjust(3, '0')}

# p ['japan', 'us', 'italy'].map.with_index { |country, n| [n, country]}
# p ['japan', 'us', 'italy'].map.with_index { [_2, _1]}

sum = 0
[[1,2,3], [4,5,6]].each do |values|
    values.each do 
        sum += _1
    end  
end
p sum

numbers = [1,2,3,4]
sum = 0

numbers.each do |n; sum|
    sum = 10 
    sum += n  
    puts  sum 
end
p sum 

File.open('./sample.txt', 'w') do |file|
    file.puts('1行目のテキスト')
    file.puts('2行目のテキスト')
    file.puts('3行目のテキスト')
end 

a = [1,2,3]
p a.delete(100) 

a.delete 100 do 
    p 'NG'
end
p a.delete(100) { 'NG'} 

names = ['田中', '鈴木', '佐藤']
names.map{ |name|"#{name}さん"}.join('と')



names.map do |name|
    "#{name}さん"
end.join('と')


# add_names = names.map { |name| "#{name}さん"}

# add_names.join('と') 
# p add_names
# puts add_names

numbers = [10, 20, 30, 40, 50]
p numbers[2..]
p numbers[..1] 

sum = 0
5.times { |n| sum += n}
p sum 

sum = 0
5.times { sum += 1}
p sum

a = []
10.upto(14){ |n| a << n}
p a 

a = []
14.downto(9) { |n| a << n}
p a 

a = []
1.step(10, 2){ |n| a << n}
p a 
a = []
10.step(1, -2) {|n| a << n}
p a