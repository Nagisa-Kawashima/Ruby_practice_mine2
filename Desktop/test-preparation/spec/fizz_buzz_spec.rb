require 'test/unit'
require_relative '../lib/fizz_buzz'
# RSpec.describe 'Fizz Buzz' do 
#     example 'fizz_buzz' do 
#         expect(fizz_bazz(1)).to eq '1'
#     end

# end  


class FizzBuzzTest < Test::Unit::TestCase 
    def test_fizz_buzz
        assert_equal '1', fizz_buzz(1)
    end 
end