require 'active_support/time'
# module A
#     def to_s 
#         "<A>#{super}"
#     end  
# end
# module B
#     def to_s 
#         "<B>#{super}"
#     end  
# end

# class Product 
#     def to_s  
#         "<Product>#{super}"
#     end
# end

# class DVD < Product
#     include A
#     include B
#     def to_s 
#         "<DVD>#{super}"
#     end
# end
# dvd = DVD.new  
# p dvd.to_s
# p DVD.ancestors
# -------------------------------------
# class Product
#     def name 
#         'A great film'
#         prepend NameDecorator
#     end
# end

# module NameDecorator 
#     def name 
#         "<<#{super}>>"
#     end
# end
# product = Product.new  
# p product.name  
# -----------------------------

# class User
#     def name
#         'Alice' 
#     end 
# end
# class User
#     User.prepend.NameDecorator
# end 
# user = User.new  
# user.name
# ---------------------------------------
module A
    def to_s
        "<A>#{super}"  
    end 
end
class Product
    prepend A 
    def to_s
        "<Product>#{super}"  
    end
end 
product = Product.new  
p product.to_s

module StringShuffle  
    refine String do   
        def shuffle 
            chars.shuffle.join
        end
    end  
end


msg = %q/こんにちは/
p msg
msg = %Q(こんにちは)
colors = ["red", "blue", "yellow", "pink"]
puts colors.empty?  
colors<<"green"
puts colors.length
p colors

animals =%w(dog cat elephant)
p animals

arr = [1,2,3]
puts arr.inspect
obj = Object.new  
p obj


a = -1
result = (if a > 0 then "OK" end)
puts result


print "入力してください"
num = gets.to_i  
# if num % 2 == 0 
#     puts "偶数です"
# end   

if num % 2 == 0 then puts "偶数です" end
puts "偶数です"if num % 2 == 0

unless num % 2 ==0
    puts "偶数ではありません"
end

def triangle(height, base)
    result = base * height /2.0
    result
end  

area = triangle(9, 11)
puts "面積は#{area}です"

def triangle(height, base)
    return nil if base < 0 || height < 0
    base * height /2.0
    # result
end  

area = triangle(1, 11)
puts "面積は#{area}です"

message = ""
if message.empty? then puts "空です"end

line = "ddsdads\n"
line.chomp!  
line2 = line
p line2

10.times do |i|
    print i, ","

end
10.times { |i| print i, ","}

2.upto(6)do |i|
print i, ","
end
arr = ["apple", "orange", "grape"]
arr.each do |item|
    print item + ","
end
arr.each_with_index do |item, i|
    print "#{i}.#{item}"
    print ","if i< arr.length-1 
end

File.open("output.txt", "w", encoding: "utf-8") do |file|
    file.puts "こんにちは"
end

begin
    File.open("some.txt", encoding: "utf-8") do |f|
        print f.gets
    end
rescue => exception
    warn "エラー来た"
    warn "#{exception.class}/#{exception.message}"
end
    
begin
    raise "ファイルがない" unless File.exist?("some.txt")
rescue => exception
    warn exception.message
    

    
end

# fruits = ["apple", "orange", "banana"]
# puts "OK" if fruits.include?("banana")    

# print "合言葉："
# word = gets.chomp
# if  ["apple", "orange", "banana"].include?(word)
#     puts "OK"
# end


numbers = [1,2,3,4,5,6,7,8,9]
puts "OK"if numbers.all? {|item| item > 0}
puts "OK"if numbers.any? {|item| item% 2 == 0}

numbers = [1,2,3,4,5,6,7,8,9]
number = numbers.find{ |item| item > 5}
puts number
numbers2 = numbers.find_all{ |item| item > 5}
p numbers2

fruits = ["apple", "orange", "banana"]
# big_fruits= fruits.map{|item| item.upcase}
big_fruits = fruits.map(&:upcase)
p big_fruits

books = {}
File.open("books.txt", encoding: "utf-8") do |f|
    f.each_line do |line|
        cols = line.chomp.split(",")
        p cols
        books[cols[0]] = cols[1]
        # p books
    end
end
books.each do |key, val|
    puts "#{key}, #{val}円"
end 


def triangle(params)
    params[:base]*params[:height] / 2.0
    # p params {:height=>3.4, :base=>2.3}
end  

# area = triangle(height: 3.4, base: 2.3)
area = triangle height: 3.4, base: 2.3
puts "三角形の面積#{area}"

range = "a".."h"
p range
(1..4).each {|num| puts "7x#{num}=#{7* num}"}
# ------------------------------------
require 'active_support/time'
require 'active_support/all'
puts Time.now
t = Time.now
puts t.month 
puts t.wday
puts t.day
puts t.hour 
puts t.min
puts Time.local(2018,4,21,20,12,25)
# puts Time.now.next_month.tomorrow

# Time.current.tomorrow.biginning_of_day
Time.now.tomorrow.beginning_of_day
Time.zone = 'UTC'
puts Time.zone 

puts Time.now.to_date

puts Time.now.yesterday
puts Time.now.last_week

puts Time.now.advance(days:3).beginning_of_day

time = Time.current
puts time.strftime("%Y/%m/%d %H:%M")
puts time.strftime("%a/%A/%b %B:%Z")