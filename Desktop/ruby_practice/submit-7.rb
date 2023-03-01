
# モジュールは、Rubyの定数やメソッドだけをまとめる機能です。モジュールを使うことで、共通の定数やメソッドをクラスとは分離して共有することができます。


# Here your code !
#オブジェクトの作成や継承は出来ないので注意
module Greeting2
    def say_hello()
        puts "hello world"
    end 
    
    def say_morning()
        puts "good morning world"
    end
    module_function :say_hello
end

class Player 
    include Greeting2 
    #クラスにモジュールを組み込むにはincludeを使う
    def introduce()
        puts "私は勇者です"
    end 
end

Greeting2.say_hello()

#クラスの中に組み込んでメソッドを共有するmix-in

player =Player.new()
player.introduce()
player.say_morning()


# モジュールのメソッドを呼び出す

module Hogehoge
    def say_paiza()
    	puts "hello paiza"
    end

    module_function :say_paiza    
end

Hogehoge.say_paiza()


# モジュールをクラスに組み込む

module Action
    def attack(target)
    	puts "#{@name}は、#{target}を攻撃した！"
    end
end

class Enemy
    # この下にモジュールを組み込む
    include Action
    def initialize(name)
        @name = name
    end
end

slime = Enemy.new("スライム")
slime.attack("勇者")
