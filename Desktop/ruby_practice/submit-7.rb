
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


input_line = gets.to_i
# puts "XXXXXX"

for i in 1..input_line do 
    print "*"
end


print 'こんにちは'
print '今日の天気は'
print '晴れですね'
#こんにちは今日の天気は晴れですね


printf('商品情報: カテゴリー %s 型番 %d', 'bag', 10111)
# 商品情報: カテゴリー bag 型番 10111


p sprintf("明日、%sの最高気温は%d度です。","サムライ村",33)

num = gets
count = num.size
p count
for i in 1..count do
    print "+"
    
end
puts "\n+num+"


num = gets
count = num.size + 1
# p count
for i in 1..count do
    print "+"
    
end
puts  "\n+" + num.chomp + "+"
for i in 1..count do
    print "+"
    
end

for i in 1..3 do
    input_line = gets 
    puts input_line
end


input_line = gets.to_i
# p input_line
# count = input_line.length
# puts count
# puts "XXXXXX"
# puts input_line
for i in 1..input_line do
    moji = gets
    puts moji
    
end


input_line = gets
# p input_line

array = input_line.split(" ")
#  p input_line
 
array.each do |line|
    puts line
end


while line = gets   
    line.chomp! 
    puts line 
end

array = []
while line = gets   
    line.chomp! 
    array.push(line)
    # puts line 
end
p array 

array.each do |line|
    puts line
end

#1行に複数ある場合、それを一つ一つ文字列のみ出力していく
line = gets.chomp.split(",")
line.each do |enemy|
    # puts "#{enemy}が現れた"
    i =enemy.strip
    puts i
end


puts 1 
begin  
    number = 0   
    answer = 100 / number    
    puts answer 
rescue ZeroDivisionError => e        
    p e 
ensure 
    puts 2
end
# puts 2

enemies = ["スライム","ドラゴン","魔王"]
begin
    number = 0
    
   
    puts "勇者は#{enemies[2/number]}と戦った"
rescue ZeroDivisionError => e
    # p e
ensure
     puts "勇者は敵に遭遇した"
end
puts "勇者は勝利した"
