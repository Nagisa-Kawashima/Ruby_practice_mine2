def say_hello(greeting = "hello", target = "world")
    puts "#{greeting} #{target}"
end

say_hello
say_hello("こんにちは", "ほげほげ")  #こんにちは ほげほげ
say_hello("こんばんは")  

def say_hello2(greeting: "hello", target: "kawashimia")
    #キーワード引数は、引数にラベルを付ける機能です。
    puts "#{greeting} #{target}"
end

say_hello2
say_hello2(greeting: "こんにちは", target: "皆さん")
say_hello2(target: "こんにちは", greeting: "皆さん")
say_hello2(target: "nagisa")
say_hello2(greeting: "heihei")


class Player 
    def initialize(name)
        @name = name 
    end
    
    def attack(enemy)
        puts "#{@name}は、#{enemy}を攻撃した"
    end
    
    
end 

hero = Player.new("勇者")
warrior = Player.new("戦士")
party = [hero, warrior]
# p  party  

party.each do |player|
    player.attack("スライム")
end

class Player
    def initialize(name)
        @name = name
    end

    def attack(enemy)
        puts  "#{@name}は#{enemy}を攻撃した"
    end
end

class Warrior < Player
    def attack(enemy)
        puts  "#{@name}は#{enemy}を猛攻撃した！"
    end
end


team = []
team.push(Player.new("勇者"))
team.push(Player.new("魔法使い"))
team.push(Warrior.new("戦士"))

team.each do |person|
    person.attack("スライム")
end
