begin
    enemies = ["スライム","ドラゴン","魔王"]
    number = 0

    puts "勇者は敵に遭遇した"
    puts "勇者は#{enemies[2/number]}と戦った"
rescue ZeroDivisionError => e
    # puts "その敵は表示できません"
    STDERR.puts "その敵は表示できません"

ensure
    puts "勇者は勝利した"
end


puts 1
begin
    number = 1
    answer = 100 / number
    puts answer2
# rescue ZeroDivisionError => e
rescue NameError => e
    # puts "0では割り算できません"
    puts "未定義の変数を呼び出しています"
    p e
ensure
    puts 2
end

# NameError
# 未定義のローカル変数や定数を利用したときに発生

#NoMathodEror
#定義されてないメソッドの呼び出しが行われた時に発生


begin
    enemies = ["スライム","ドラゴン","魔王"]
    number1 = 0

    puts "勇者は敵に遭遇した"
    puts "勇者は#{enemies[number2]}と戦った"
rescue NameError => e
    STDERR.puts "未定義の変数を呼び出しています"
ensure
    puts "勇者は勝利した"
end


puts 1
begin
    number = "aa"
    number = 0
    # number.no_method
    answer = 100 / number
    puts answer2
rescue Exception => e   #su-pa-kurasu      
    puts "よきせぬエラーが発生しました"
    p e
rescue ZeroDivisionError => e
    puts "0では割り算できません"
    p e

rescue NameError => e
    puts "未定義の変数を呼び出しています"
    p e


ensure
    puts 2
end

# TypeError 期待と異なる型が渡された場合に起きる例外
# rescueブロックはサブクラスから記述する
# NoMethodError< NameError
#Exceptionはすべてのエラーのスーパークラス