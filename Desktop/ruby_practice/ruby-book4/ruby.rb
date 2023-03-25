# class User   
#     p self 
#     p self.class
# end  

# # p User.class

# # p Class.superclass

# module Loggable 
#     p self 
#     p self.class
# end  

# Loggable.class

# p Module.superclass



module NameChangeable  
    def change_name  
        self.name = 'ありす'
    end
end  
class Hoge  
    include NameChangeable
    attr_accessor :name

    def initialize(name)
      @name = name
    end  
end

user = Hoge.new('alice')
p user.name #"alice"
user.change_name 
p user.name #"ありす"


module Loga  
    def log(text)
        puts "[LOG]#{text}"
    end
end
s = 'abc'
# s.log('Hello')
s.extend Loga

s.log('Helo')

def greet
    'Hi!' 
end

class Foo   
    def bar  
        greet 
    end
end 

p Foo.new.bar
# ------------------------------------------
# module Baseball 
#     class Second  
#         def initialize(player, uniform_number)
#             @player = player 
#             @uniform_number = uniform_number  
#             puts "#{@player}, #{@uniform_number}"
#         end  
#     end   
# end  
# module Clock 
#     class Second  
#         def initialize(digits)
#             @digits = digits
#             puts @digits
#         end
#     end
# end

# Baseball::Second.new('Alice', 13)
# Clock::Second.new(13)

# ----------------------------------
# class Second  
#     def initialize(player, uniform_number)
#         @player = player 
#         @uniform_number = uniform_number  
#         return "#{player}, #{uniform_number}"
#     end
# end

# module Clock 
#     class Second  
#         def initialize(digits)
#             @digits = digits
#             @baseball_second = ::Second.new('Alice', 13)
            
#         end
#     end
# end
# Clock::Second.new(13)
# puts @baseball_second
# -------------------------------------------
module Baseball 
    class Second 
        def file_with_nesting
            puts ::File
        end  
    end  
end  

class Baseball::Second  
    def file_without_nesting
        puts Baseball::File 
    end  
end  

second = Baseball::Second.new 
second.file_with_nesting
second.file_without_nesting

