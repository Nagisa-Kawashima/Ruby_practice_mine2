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