class Robot 
    puts "実行されるか"
end

klass = Robot
r = klass.new  
r.kind_of?(Robot)
