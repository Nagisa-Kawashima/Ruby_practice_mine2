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


begin
    enemies = ["スライム","ドラゴン","魔王"]
    number1 = 0

    puts "勇者は敵に遭遇した"
    puts "勇者は#{enemies[number2]}と戦った"
rescue Exception => e
    STDERR.puts "未定義の変数を呼び出しています"
rescue ZeroDivisionError => e
    STDERR.puts "その敵は表示できません"
ensure
    puts "勇者は勝利した"
end

puts 1
begin
    # number = 1
    puts 2   
    raise Exception.new("意図的な例外")   
    puts 3
    # answer = 100 / number
    # puts answer
rescue Exception => e
    puts "予期せぬエラーが発生しました"
    p e
    puts e.message
    
ensure
    puts 4
end



puts "Hello World"

begin
    # raise ZeroDivisionError.new("強制エラー")
    raise Exception.new("0では割り算できません")
rescue Exception => e
    # STDERR.puts "未定義の変数を呼び出しています"
    STDERR.puts e.message
    # puts e.message
ensure
   puts "Hello Ruby"
end


puts "Hello Word"

begin 
    raise ZeroDivisionError.new("強制エラー")
rescue NameError 
    STDERR.puts "未定義の変数を呼び出しています"
rescue ZeroDivisionError  
    STDERR.puts "0では割り算できません"
ensure   
    puts "Hello Ruby"
end

# raiseを使うと、意図的に例外処理を起動できます。また、rescueと組み合わせることで、メソッドの呼び出し元にある例外処理を利用できます。

def test_exception(number)
    puts 2
    begin   
        puts 3
        answer = 100 / number
        return answer
        puts 4    
    rescue ZeroDivisionError => e 
        puts 5    
        raise  e
    end
    puts 6
end

puts 1
begin
    answer = test_exception(0)
    puts 7
    # puts 3 #このメソッドないで例外が発生したので、3は出力されない
rescue ZeroDivisionError => e        
    puts 8 
    p e      
end
# ------------------------------------------------------------------

def calc()
    begin
        number = 100 / 0
    rescue ZeroDivisionError => e 
        raise  e
    end
end

begin
    puts calc()
rescue ZeroDivisionError => e        
    STDERR.puts "0で割り算できません"
end

# ----------------------------------------------------
def test_exception(number)
    puts 2
    begin
        puts 3
        answer = 100 / number
        return answer
        puts 4
    rescue ZeroDivisionError => e
        puts 5
        raise e
    ensure
        puts 6
    end
 
    # puts 6
end

puts 1

begin
    answer = test_exception(0)
    puts 7
rescue ZeroDivisionError => e
    puts 8
    p e
end


#例外が発生した、していない場合でも必ず実行したい処理はensureブロック

# --------------------------------------------------

def test_exception(number)
    begin
        answer = 100 / number  
        return answer
    rescue ZeroDivisionError => e       
        raise e   
    ensure 
        puts "処理が終了しました"
        
    end
end


begin   
    puts test_exception(0)
rescue ZeroDivisionError => e     
    STDERR.puts "0では割り算できません"
end