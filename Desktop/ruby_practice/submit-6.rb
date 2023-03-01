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

# クラスからメソッドを呼び出す

class Player
    def initialize(name)
        @name = name
    end

    def attack(enemy)
        puts "#{@name}は、#{enemy}を攻撃した！"
    end
end

class Wizard < Player
    def initialize()
        # @name = "魔法使い"
        super("魔法使い")
    end
    def attack(enemy)
        # puts "シャラララーン！"
        spell()
        puts "#{@name}は、#{enemy}に炎を放った！"
    end
    private
    def spell()
        puts "シャラララーン！"
    end
end


puts "=== パーティでスライムと戦う ==="
hero   = Player.new("勇者")
warrior = Player.new("戦士")
wizard = Wizard.new
party = [hero, warrior, wizard]

party.each do |player|
    player.attack("スライム")
end
# wizard.spell()


# クラス変数とクラスメソッド

class Player
    @@character_count = 0
    def self.character_count()#オブジェクトなしで直接クラスを
    # 呼び出せるから　クラスメソッド
        @@character_count
    end
    def initialize(name)
        @name = name
        @@character_count += 1
        puts "#{@@character_count}番目のプレイヤー#{name}が登場した"
    end

    def attack(enemy)
        puts "#{@name}は、#{enemy}を攻撃した！"
    end
end

class Wizard < Player
    def initialize()
        super("魔法使い")
    end

    def attack(enemy)
        spell()
        puts "#{@name}は、#{enemy}に炎を放った！"
    end

    private

    def spell()
        puts "シャラララーン"
    end
end


puts "=== パーティでスライムと戦う ==="
hero   = Player.new("勇者")
warrior = Player.new("戦士")
wizard = Wizard.new()
party = [hero, warrior, wizard]

party.each do |player|
    player.attack("スライム")
end
puts "#{Player.character_count()}人でスライムを攻撃した" #クラスメソッドの呼び出し

class Greeting
    def self.say_hello()
        puts "hello paiza"
    end
end

# この下で、クラスメソッドを呼び出す
Greeting.say_hello()


# Here your code !
#クラスメソッド

today = Time.now()
puts today.year
puts today.month 
puts today.day


require "time"

time= Time.parse("15.07.10") do |year|
    if year < 100 
        if year >= 69 
            year + 1900 
        else
            year + 2000 
        end 
    else  
        year 
    end
    
end



# Timeクラスのparseメソッド
# time = Time.parse("2017-07-10 12:00:00")
# time = Time.parse("2017-07-10")
# time = Time.parse("2017/07/10")
# time = Time.parse("2017.07.10")
# puts time

# - 組み込みライブラリ：プログラミングの標準的な機能を提供。「require」メソッドなしで利用できる。
# - 標準添付ライブラリ：Rubyといっしょに配布。「require」メソッドで利用する。
# - RubyGem：Rubyライブラリのホスティングサービス。「gem」コマンドでインストールして利用する。

require 'date'

 a = Date.new(1993, 2, 24)
 b = Date.parse('1993-02-24')
b += 10
p b

p b - a            #=> 10
p b.year           #=> 1993
p b.strftime('%a') #=> "Sat"

yesterday = Date.today - 1
p yesterday


