def fizz_buzz(n)
    # begin
        if n % 15 == 0
            'Fizz buzz'
        elsif n % 3 == 0
            'Fizz'
            
        elsif n % 5 == 0
            'Buzz'
        else 
            n.to_s
        end
    rescue => e  
        puts "#{$!.class}/ #{$!.message}"
        # raise
    # end

end
fizz_buzz(nil)


# class NocountryError < StandardError 

# end

# def currency_of(country)
#     case country 
#     when :japan 
#         'yen'
#     when :us
#         'dollar'
#     when :india  
#         'rupee'
#     else  
#         # raise NocountryError, "無効な国名です#{country}"
#     end
# end
# currency_of(:italy)

class NocountryError < StandardError 
    attr_reader :country  
    def initialize(message, country)
      @country = country
      super("#{message} #{country}")
    end
end  

def currency_of(country)
    case country 
    when :japan 
        'yen'
    when :us
        'dollar'
    when :india  
        'rupee'
    else  
        raise NocountryError.new('無効な国名です', country)
    end
end

begin
    currency_of(:italy)
rescue NocountryError => e
    puts e.message  
    puts e.country
 
end
