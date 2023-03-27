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