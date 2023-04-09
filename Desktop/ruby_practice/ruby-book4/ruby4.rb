class Robot 
    puts "実行されるか"
end

klass = Robot
r = klass.new  
r.kind_of?(Robot)


# synth = WordSynth.new 

# synth.play('Ruby is fun!')

# word = WordSynth.new
# synth.add_effect(Effects.reverse)

# synth.play('Ruby is fun')


# def greet
#     puts 'おはよう'
#     yield
#     yield
#     puts 'こんばんは' 
# end

# greet do 
#     puts 'こんにちは'
# end

# greet

# def greet
#     puts 'おはよう'
#     if block_given? 
#         yield
#     end 
#     puts 'こんばんは'

# end


# greet 


# greet do 
#     puts 'こんにちは'
# end


# def greet 
#     puts 'おはよう'
#     text = yield 'こんにちは'
#     puts text 
#     puts 'こんばんは'
# end

# greet do |text|
#     text * 2  
# end


# def greet 
#     puts 'おはよう'
#     text = yield 'こんにちは', 12345
#     puts text 
#     puts 'こんばんは'

# end

# greet do |text|
#     text * 2
# end  


# def greet 
#     puts 'おはよう'
#     text = yield 'こんにちは'
#     puts text 
#     puts 'こんばんは'
# end

# greet do |text, other|
#     text * 2 + other.inspect
# end


# puts "moji".inspect
# puts 12.inspect


def greet(&block)
    puts 'おはよう'
    text = block.call('こんにちは')
    puts text  
    puts 'こんばんは'
end  

greet do |text|
    text * 2    
end