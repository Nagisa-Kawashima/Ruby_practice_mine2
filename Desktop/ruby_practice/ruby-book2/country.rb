class CountryCode 
    attr_accessor :code

    def initialize(code)
      @code = code
    end

    def eql?(other)
        other.instance_of?(CountryCode) && code.eql?(other.code)
    end

    def hash 
        code.hash
    end


end

japan =CountryCode.new('JP')
us =CountryCode.new('US')
india =CountryCode.new('IN')

currencies = { japan => 'yen', us => 'dollar', india => 'rupee'}

key = CountryCode.new('US')
p currencies[key]
p currencies[japan]