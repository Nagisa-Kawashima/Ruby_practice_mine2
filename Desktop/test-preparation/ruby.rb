puts 5 #integer 整数型
puts "5" #string 文字列

puts 5 + 3 #整数型の計算である「5+3」が行われ、実行結果「8」
puts "5 + 3" #ダブルクォーテーション（"）で囲われた「5+3」の文字が表示されます。
puts "5" + "3" #文字列の連結


puts "I" + "am" + "Sam"
puts "I" + "%" + "hoge"


# 先ほどは、同じ型同士を「+」でつなぎましたが、型が違うものを「+」でつなげるとエラーが起きてしまいます。
# そこで型変換を行うと違う型でも「+」で接続する事ができます。

puts "ほげの年齢は" + 28.to_s + "です"
puts 100 + "200".to_i

#to_sメソッドは（整数型→文字列型へ変換）
# to_iメソッドは（文字列型→整数型へ変換）

name = "A"
weight = 50

# puts name + "さんの体重は" + weight.to_s + "kgです"


#変数展開を用いると、元の変数がどのような型であっても文字列型に変換してくれます。
#ダブルクォーテーションの中に#{変数}と書きます。

puts "#{name}さんの体重は#{weight}kgです。"
#+による連結に比べてコード量が減る
# 変数の型を気にする必要がない
# という点で便利になります。

puts "#{name}さんの体重は#{weight * 2}kgです。"

# ↓　ただし、変数展開はダブルクォーテーションで囲った場合のみ機能し、
# シングルクォーテーションで囲った場合は変数ではなく文字列として認識されてしまいます。

puts '#{name}さんの体重は#{weight * 2}kgです。'

# -------------------------------------------------------------------------------

# 配列を使うと、複数のデータをまとめて保存できます。
# 配列には、どのようなオブジェクトでも代入でき、同じ配列の要素に異なった種類のオブジェクトを代入することも可能です。
# つまり、データ型は問われませんので、文字列でも数値でも代入できます。
names = ["Git", 4, "CSS"]
puts names[1]
#データを呼び出すには、配列名[インデックス番号]で記述します

tall = {"太郎" =>185, "二郎"=>170, "花子"=>150}
puts tall["太郎"]
# ハッシュでは任意の値（キー）を割り振ることができます。


total = 100
if total < 200
    puts "合計は200未満です"
end
if    total >= 90
    puts "合計は90以上です"
end


hand = "グー"
if hand == "グー"
    puts "出した手はグーです"
end
if hand != "チョキ"
    puts "出したではチョキではありません"
end



# !   # 否定
# &&  # どちらの条件も正しければtrue
# ||  # どちらかの条件が正しければtrue
# これらを論理演算子という

if hand == "グー" || hand == "パー"
    puts "出した手はグーまたはパーです"
end

score = 70
if (score >= 50 || socre<= 100) && score >= 60
    puts "得点は50以上または100点以下で、かつ60点以上です。"
end
if score >= 50 || (score <= 100 && score >= 80)
    puts "得点は50点以上、または80点以上100点以下です。"
end

#if式では、elseを使うことでifの条件式の返り値が偽であった場合の処理を設定できます。


apple = "ほげほげ"
if apple == "Aomori"
    puts "aomiriです"
elsif apple == "Nagano"
    puts "正解です"
else
    puts "違います"
end


puts "入力してください"
input_key = gets
puts "入力された文字列は#{input_key}"

# getsメソッドを用いるとユーザが入力できるようになります。
# さらにwhile、for、eachなどの繰り返し処理により、コードを１つずつ書く必要がなく、記述量を減らすことが出来ます。


dice = 0
while dice != 6 do
    dice = rand(1..6)
    puts dice
end


# for 変数 in 範囲、ハッシュ、配列などを指定 do
#     処理
#   end

for i in 1..6 do
    puts i
end

# for式では、指定したオブジェクトから順に値を取り出しながら繰り返されます。



# 「eachメソッド」は、オブジェクト内の要素を順に取り出すメソッドです。
# eachメソッドで記述することで、データの先頭から順に繰り返して処理が行われます。
# 基本の書き方は以下のようになります。

# （範囲、ハッシュ、配列などを指定）.each do |変数|
#   実行する処理
# end
amounts = {"apple"=> 2, "itigo" =>4, "orange" =>3}
amounts.each do |fruit, amount|
    puts "#{fruit}は#{amount}個です"
end



i = 1
while i <= 10 do
    if i == 5
        puts "処理が終了します"
        break #繰り返し処理を中断するには、「break」を使います。
             #breakは、while、for、eachなどの繰り返し文の中で利用します。
    end

    puts i
    i += 2 #この場合だと１と３のみ表示されて終わる
end

puts "計算を始めます"   
puts "2つの値を入力してください"
a = gets.to_i  
b = gets.to_i
puts "計算結果を出力します"
puts "#{a}*#{b}= #{a*b}"
puts "計算を終了します"

#計算を繰り返す回数（input）と、変数i（初期値1

puts "計算を始めます"
puts "何回計算を繰り返しますか"
input = gets.to_i #繰り返しの合計の回数となる
i= 1

while i <= input do
    puts "#{i}回目の計算"
    puts "2つの値を入力してください"
    a = gets.to_i
    b = gets.to_i
    puts "a= #{a}"
    puts "a= #{b}"

    puts "計算結果を出力します"
    puts "#{a}+#{b}=#{a+b}"
    puts "#{a}-#{b}=#{a-b}"
    puts "#{a}*#{b}=#{a*b}"
    puts "#{a}/#{b}=#{a/b}"
    i += 1
end
puts "入力された回数分計算したので、計算を終了しました"

#メソッドの種類
puts "kawashima".length
puts "kawashima".reverse
puts "kawanokawa".include?("kawa")
puts "kawanokawa".methods
puts "KAWASHIMA".downcase #小文字変換
# ------------------------------------------------------


def メソッド名(引数)  # 引数は任意
    # 実行する処理内容
end
#メソッドは呼び出されない限り処理が実行されることはない
#メソッドを呼び出すときは定義した後に呼び出す必要がある！


def greeting(name)
    return "Hello, #{name}!"  # この行のnameは、引数で渡すname 
    "Good morning, #{name}!" #do-end内の処理の最終結果が戻り値となる
    #※しかしreturnを使うと戻り値を変更出来る

  end
  
  puts greeting("John")  # 'John'を引数として渡す



#   ----------------------------------------------------


def fizz_buzz(number)
    if number % 15 == 0
        "FizzBuzz"
    elsif number % 3 == 0
        "Fizz"
    elsif number % 5 == 0
    else
        number.to_s
    end
end
puts "数字を入力してください"
input = gets.to_i
puts "結果は、、、"
puts fizz_buzz(input)



# ----------------------------------------
# class クラス名 #始まりは大文字
#     def メソッド名(引数)#クラス内に定義されたメソッドをインスタンスメソッド
#     end
# end


class Car
    def turn(hoge)
        puts "#{hoge}に曲がります"
    end
    def run(distance)
        puts "車で#{distance}キロ走ります"
    end
end

car = Car.new #インスタンスの作成
car.turn("右")
car.run(5)
# インスタンス名.メソッド名(引数) #呼び出し
# --------------------------------------------

# self はオブジェクト自身の事
# 1. クラスメソッドとして使う
# 2. レシーバーとして扱われるself



#クラスメソッドの書き方
# class クラス名
#     def self.メソッド名(引数)
#     end
#   end
  
#   クラス名.メソッド名(引数) #呼び出す場合はインスタンスの作成をしない


  class Car
    def self.run(distance)
        puts "車で#{distance}キロ走ります"
    end
  end

  Car.run(3)


  class Car

    def move(direction, distance)
        self.turn(direction)
        self.run(distance)

    end
    def turn(direction)
        puts "#{direction}に曲がります"
    end
    def run(distance)
        puts "#{distance}キロ走ります"
    end
  end

  car = Car.new
  car.move("右", 2)

#   -------------------------
# クラスメソッドの定義の仕方は「def self.メソッド名」ですので
# 「def self.turn」となります。
# クラスメソッドは、直接クラスから呼び出しますのでCar.turn("右")としましょう。

class Car
    def self.turn(direction)
        puts "#{direction}に曲がります"
    end
end

Car.turn("右")



class Car
    def run(distance)
        puts "車で#{distance}キロ走ります。"
    end
end
# class Bus
#     def run(distance)
#         puts "車で#{distance}キロ走ります。"
#     end
# end
class Bus < Car


bus = Bus.new
bus.run(3)

puts Bus.superclass
end


class Car
    def run(distance)
        puts "車で#{distance}キロ走ります"
    end
end

class Bus < Car
    def run(distance)
        # super
        puts "30人を載せて走っています"
    end
end

bus = Bus.new
bus.run(3)


# superとは
# 子クラスのメソッド内で定義すると、親クラス内にある同じ名前のメソッドを呼び出すことができる
# superの書き方は、メソッド内に「super」と定義するのみ


# ---------------------------------

class Car
    def run(distance)
        puts "車で#{distance}キロ走ります"
    end
end
class Truck < Car
    def run(distance)
        super
        puts "大きな荷物を乗せて走ります"
    end
end

truck = Truck.new
truck.run(5)

# ----------------------------------------------------------

# Rubyの内部では、メソッド名や変数名、クラス名などの"名前"を整数で管理しています。
# これは名前を文字列で処理するよりも整数で処理する方が速いからです。
# その整数をRubyのコード上で表現したものがシンボルです。
# つまりシンボルとは見た目は文字列のようですが、内部では整数として扱われているオブジェクトということです。


kawashima = :studyenglish
puts kawashima

dog1 = "犬"
dog2 = "犬"
dog3 = :犬
dog4 = :犬
#シンボルは変数名は違っていても、同じオブジェクトを参照しているので一意性があり、高速で処理を行うことが出来る

puts dog1.object_id
puts dog2.object_id
puts dog3.object_id
puts dog4.object_id

tall = {:太郎=> 185, :二郎=> 170, :花子=>150}
puts tall[:太郎]