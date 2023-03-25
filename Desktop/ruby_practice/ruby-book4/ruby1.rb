# module Loggable 
#     class << self
#         def log(text)
#         # def self.log(text)
#             puts "[LOG]#{text}"
#         end
#     end
# end

# Loggable.log('Hello')
# -----------------------------
module Loggable
    def log(text)
        puts "[LOG]#{text}"
    end  
    module_function :log 
end
Loggable.log('Hello')

class Product  
    include Loggable

    def title  
        log 'title is called'
        'A greate movie'
    end
end

product = Product.new
puts product.title

# ---------------------
module Loggable
    PREFIX = '[LOG]'
    def log(text)
        puts "#{PREFIX}#{text}"
    end
end
p Loggable::PREFIX#定数を参照する
Loggable.log('hoge')#メソッドを参照する

# ------------------------------------------------
Math.sqrt(2)

class Calculator  
    include Math  

    def calc_sqrt(n)
        sqrt(n)
    end
end

caluculator = Calculator.new
puts caluculator.calc_sqrt(2)

puts Math::E  
puts Math::PI 

Kernel.puts 'Hello.'
Kernel.p [1,2,3]

