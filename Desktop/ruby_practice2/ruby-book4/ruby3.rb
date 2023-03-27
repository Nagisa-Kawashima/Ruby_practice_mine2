class Robot
    def initialize(name)
    @name = name
    @x = @y = 0
    end
    def move(x, y)
        @x += x; @y += y;
    end

    def to_s 
        "#{@name}:#{@x}. #{@y}"
        # "hogehoge"
    end 
     
end
# robo = Robot.new  
# p robo
robo1 = Robot.new("一号")
puts robo1
robo2 = Robot.new("二号")
robo2.move(10, 20)
puts robo2

# s = "hello"
# puts s.class   
# puts s.kind_of?(String)
# puts s.kind_of?(Object)
# puts s.instance_of?(String)
# puts s.instance_of?(Object)

class Robot 
    def initialize(name)
      @name = name
      @x = @y = 0

    end
    def move(x, y)
        @x += x; @y += y 
        crash if @x < 0 || @y < 0
    end
    private def crash 
        puts "爆発したぜ"
    end
end  

robo = Robot.new("一号")
robo.move(200, -100)
# robo.crash

class Robot  
    attr_reader :name 
    attr_accessor :score

    def initialize(name)
        @name = name
        @x = @y = 0
        @score = 10 

    end

    def change_name(new_name)
        old_name = name
        # name =new_name
        # self.name = new_name
    end
end
robo1 = Robot.new("一号")
robo2 = Robot.new("二号")
robo2.score = 90 
puts robo1.name, robo1.score
puts robo2.name, robo2.score
robo1.change_name("hoge")
# robo1.name= "hogehoge"


class Robot
    def initialize(name, x, y)
      @name= name
      @x = x;@y= y
    end

    def to_s  
        "#{@name}:(#{@x},#{@y})"
    end

    def self.load(fname)
        robots = []
        File.open(fname, encoding: "utf-8") do |f|
            f.each_line do |line|
                cols = line.chomp.split(",")
                robots << new(cols[0], cols[1].to_i, cols[2].to_i, )
            end
        end
        robots
    end

end
robots = Robot.load("robots.txt")
robots.each {|r| puts r }  


class Shape  
    PI = 3.14159  

    def self.circle(r)
        r*r* PI  

    end
end
puts Shape::PI  
puts Shape.circle(5)

# -----------------------------------
class Robot 
    def initialize(name)
      @name = name
      @x = @y =0 
    end
    def move(x, y)
        @x += x; @y+= y 
    end 
    def to_s
        "#{@name}:#{@x},#{@y}"  
    end
end  

class FlyingRobot < Robot 
    def initialize(name)
      super 
      @z = 0 
    end
    def move(x,y,z)
        super(x, y)
        @z += z 
    end  
    def to_s  
        super + ",#{@z}"
    end
end
robo = FlyingRobot.new("ロボ１号")
robo.move(50,10,30)
puts robo
# --------------------------
module Radar  
    def distance_to(other)
        Math.sqrt((self.x - other.x)**2 + (self.y - other.y)**2)
    end
end

# class Robot 
# include Radar
# attr_accessor :name, :x, :y 
#     def initialize(name)
#     @name = name
#     @x = @y = 0  
#     end
#     def move(x, y)
#         @x += x;@y+= y
#     end  
# end 
# robo = Robot.new("一号")
# robo2 = Robot.new("二号")
# robo2.move(12, 35)
# puts "距離は#{robo.distance_to(robo2)}です"

