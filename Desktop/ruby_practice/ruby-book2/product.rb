class Product  
    @name = 'Product'

    def self.name 
        "#{@name}クラス1"

    end 


    def initialize(name)
      @name = name
    end

    def name  
        "#{@name}はほげほげ"
    end

end

# p Product.name

# product = Product.new('A great movie')
# p product.name


# p Product.name

class DVD < Product
    @name = 'DVD'

    def self.name  
        "#{@name}クラス2"
    end

    def upcase_name  
        @name.upcase
    end

end

p Product.name
p DVD.name

dvd = DVD.new('A great movie')
p dvd.name
p dvd.upcase_name

p Product.name
p DVD.name
