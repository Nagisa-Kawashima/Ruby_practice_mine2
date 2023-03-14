class Foo  
    3.times do 
        puts 'hello'
      
    end
end


class Product  
    SOME_NAMES = ['Foo', 'Bar', 'Baz']

    def self.names_without_foo(names = SOME_NAMES)
        names.delete('Foo')
        names  
    end  

    
end 

p Product.names_without_foo
p Product::SOME_NAMES
