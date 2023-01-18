#for では何らかの集合的なオブジェクト（配列やハッシュ）、それから範囲を表すオブジェクトの要素数分だけ何らかの処理を繰り返すことができる命令になります。

for name, score in{taguchi: 200, fkoji: 400} do
    puts "#{name}: #{score}"
end

(15..20).each do |i|
    p i
end
["red", "blue"].each do |color|
    p color
end

{kawashima: 200, nagisa: 400}.each do |name, score|
    puts "#{name}, #{score}"
end
# --------------------------------------------
# オブジェクト.each do |変数|
#     繰り返し処理
# end
  #eachメソッドは、主に配列の要素分の処理を繰り返し行いたい場合に使用するメソッドです。配列を指定してeachメソッドを実行すると、配列のインデックス番号0から順番に繰り返し処理が実行されます。

fruits = ["apple", "orange", "melon"]
fruits.each do |a|
    # p a #"apple""orange""melon"
    puts a # apple orange melon
end

range = 1..10
range.each do |a|
    puts a
end

# オブジェクト.each{ |キー, 値|
#   繰り返し処理
# }

fruits = {apple:100, orange:80, melon:400}
fruits.each {|key, value|
    puts"#{key} => #{value}"
}

# each_with_index(インデックス番号を扱う)
array = [10, 20, 30]
array.each_with_index do |a, i|
    p "#{i}番目の配列の要素は#{a}です"
end

#each.with_index(初期値を設定して、インデックス番号を扱う)
array = [10, 20, 30]
array.each.with_index(1) do |a,i|
    #(1)のように、カッコ内に任意の数値を初期値として設定することができます。
    p "#{i}番目の配列の要素は#{a}です"
end

#each_slice(配列の要素を指定した数値で切り分ける)
array = [10, 20, 30, 40, 50, 60]
array.each_slice(2) do |a|
    p a #[10, 20] [30, 40][50, 60]
end
array.each_slice(3) do |a|
    p a #[10, 20, 30] [40, 50, 60]
end

#each_line(改行ごとに切り分ける)
# --------------------------------
print 'こんにちは '
print '今日の天気は'
print '晴れですね'
#printメソッドの特徴は改行を入れずに引数に指定した値を出力することです。
#こんにちは 今日の天気は晴れですね 

#putsメソッドも同様に出力する値を半角スペース後に指定することで利用できますが、printメソッドとの違いは、末尾に改行が入る形で出力される
puts 'こんにちは'
puts '今日の天気は'
puts '晴れですね'

p 'こんにちは'
p '今日の天気は'
p '晴れですね'
p 40
#pメソッドは出力する値と共に型情報（文字列や数値型など）を一緒に出力します

# "こんにちは"
# "今日の天気は"
# "晴れですね"
# 40

#printfメソッドは書式を指定して出力するためのメソッドとなります
printf('商品情報: カテゴリー　%s 型番　%d', 'bag', 10111)
#商品情報: カテゴリー　bag 型番　10111

p sprintf("明日、%sの最高気温は%dです", "東京", 33)
#"明日、東京の最高気温は33です"
puts sprintf("明日、%sの最高気温は%dです", "東京", 33)
#明日、東京の最高気温は33です


# 2021年10月30日 · 英語で数字は「number」「Numeral」「Figure」「Digit」
p sprintf("明日、%sの最高気温は%d度です。","サムライ村",33)

shoes = "シューズ"
hat = "帽子"
print shoes
puts hat
p hat
p hat
printf("商品情報: カテゴリー %s 型番 %d", shoes, 10111)
# printf("商品情報: カテゴリー %s 型番 %d", 10111, shoes) #引数を逆にするとエラーになる

shoes = "シューズ"
hat = "帽子"
print shoes, hat #シューズ帽子
puts shoes, hat #シューズ帽子 ・改行
p shoes, hat #"シューズ""帽子"

#文字列の桁数を指定する
# %のあとに数値を指定すると桁数を指定できます。
# puts "apple"
printf("%5s", "abc")
#足りない部分には空白が出力されて、デフォルトでは右詰で出力

# puts "abcde"
printf("%-5s", "abc")
#左詰めにしたい場合は数値に-をつけると出力する書式を変更できる

#配列の中身をつなげて出力する(join)
array = ["ruby", "php", "python"]
puts array.join("+")
puts array.join("-")
puts array.join(" +   ")

#繰り返し出力する(times)
10.times do |i|
    puts "東西南北侍列伝 第#{i+1}巻"
end

hash = {ruby: "Rails", php: "CakePHP", python: "Django"}
hash.each do |key, value|
    puts "#{key}のフレームワークはおもに#{value}です"
    p "#{key}のフレームワークはおもに#{value}です"
end

text = "色付きで出力される"
red = 31
green = 32
yellow = 33
blue = 34
magenta = 35
cyan = 36
white = 37

puts "e[#{red}m#{text}e[0m"
puts "e[#{green}m#{text}e[0m"
puts "e[#{yellow}m#{text}e[0m"
puts "e[#{blue}m#{text}e[0m"
# ----------------------------------------
# i = 0
# loop do
#     p i 
#     i += 1
# end

10.times do |i|
    if i == 7 then
        break #数字0~6の計7回で出力が止まる
        next
          #  p "kawa#{i}" #数字は０～９までの計１０回出力される
    end
    p i
end

def sayHi(name = "Tom") #引数
    score = 80
    # puts "hi! #{name}" 
   return "hi #{name}, #{score}"
end

# sayHi("kawashima")
# sayHi"kawashima"
# sayHi
p sayHi

class User
    def initialize(name)
      @name = name
    end
    def sayHi
        puts "hi! #{@name}"
    end
end
tom = User.new("Tom")
tom.sayHi
bob = User.new("bob")
bob.sayHi

class Car
    def initialize(carname)
      @name = carname
    end
end
  
 car = Car.new("civic")
 p car

 class Car
    def initialize(carname = "kawashima")
        @name = carname
    end
    #インスタンスメソッドの中で initialize と言う名前が付けられたメソッドは特別なメソッドで、インスタンスが生成されるときに自動的に initialize メソッドが呼び出されます。

    def dispName()
        puts(@name)
    end
 end

 car1 = Car.new("lexus")
 car2 = Car.new()

 car1.dispName()
 car2.dispName()
#  -----------------------------------------------
#attr_readerはインスタンス変数にアクセスするためのゲッター
# attr_writerはインスタンス変数にアクセスするこめのセッター
# これらをアクセサメソッドという

class Human
    attr_reader :name
    attr_writer :name #追加
    def initialize(name)
        @name = name
    end

end
human = Human.new("taro")
puts human.name
human.name = "siro"# 追加
puts human.name #　追加
#  -----------------------------------------
class Human
    attr_accessor :name
    def initialize(name)
        @name = name
    end

end
human = Human.new("taro")
puts human.name
human.name = "siro"# 追加
puts human.name #　追加
#  -----------------------------------------
class User
    attr_accessor :name
    def initialize(name)
        @name = name
    end
    def sayHi
        # puts "hi! #{@name}"
        # puts "hi! #{self.name}"
        puts "hi! #{name}"
    end
end
tom = User.new("tom")
# tom.name = "tom Jr"
p tom.name
# -----------------------------------
class User
    @@count = 0
    VERSION = 1.1
    
    def initialize(name)
        @@count += 1
        @name = name
    end
    def sayHi
        puts "hi i am #{@name}"
    end
    
    def self.info
        puts "#{VERSION}: User Class, #{@@count} instances"
    end
end

tom = User.new("tom")
bob = User.new("bob")
steve = User.new("steve")
User.info
p User::VERSION

class Class_A
    @@c_name = "未定義"
    def initialize(arg1)
      @arg = arg1
    end
    def set_c(name)
      @@c_name = name
    end
    def show_i()
      @arg
    end
    def show_c()
      @@c_name
    end
  end
   
  obj1 = Class_A.new("No.1")
  p obj1.show_i() # "No.1"が表示される
  p obj1.show_c() # "未定義"が表示される
  obj2 = Class_A.new("No.2")
  p obj2.show_i() # "No.2"が表示される
  p obj2.show_c() # "未定義"が表示される
   
  obj1.set_c("設定済")
  p obj1.show_c() # "設定済"が表示される
  p obj2.show_c() # obj1で設定した"設定済"が表示される
#   ----------------------------------------------------
class User
    def initialize(name)
        @name = name
    end

    def sayHi
        puts "hi i am #{@name}"
    end
end

class AdminUser < User
    def sayHello
        puts "Hello from #{@name}"
    end
    def sayHi
        super
        puts "hi from admin!"
    end

end
tom = User.new("tom")
tom.sayHi #呼び出し hi i am tom

tom = AdminUser.new("tom")
tom.sayHi #呼び出し hi i am tom hi from admin!
tom = AdminUser.new("kawashi")

tom.sayHello #Hello from kawashi
# ----------------------------------------------
# Rubyの場合、C++やPHPと違うのは、インスタンス変数・クラス変数を直接に参照・変更はできず、アクセスメソッドを通して行います。
# したがって、アクセス制限は、メソッドのみが対象となります。
# クラス内部でしか利用すべきでないメソッドは、privateやprotectedにしておきます。
# また、アクセス制限の宣言を何も行わない場合、デフォルトではpublicとなります。
class AccessTest
    public
    def pub
        puts "public_method"
    end
    protected
    def pro
        puts "protected_method"
    end
    private
    def priv
        puts "private_method"
    end
end

class SubAccessTest < AccessTest
    def pub_s
        pub
    end

    def pro_s
        pro
    end
    
    def priv_s
        priv
    end
end

test_super = AccessTest.new
test_super.pub
# test_super.pro  #error
# test_super.priv #error

test_super = SubAccessTest.new
test_super.pub_s
test_super.pro_s  
test_super.priv_s 
# ---------------------------------------------------
class TestPro
    protected
    def pro
        puts "protected_method"
    end
    
    public
    def pro_p
        TestPro.new.pro
    end
end
 
class SubTestPro < TestPro
    def pro_s
        TestPro.new.pro
    end
end
 
TestPro.new.pro_p
SubTestPro.new.pro_s
# ------------------------------------------
class TestPriv
    private
    def priv
        puts "private_method"
    end
    
    public
    def priv_p
        TestPriv.new.priv
    end
end
 
class SubTestPriv < TestPriv
    def priv_s
        TestPriv.new.priv
    end
end
 
# TestPriv.new.priv_p        # エラー
# SubTestPriv.new.priv_s    # エラー

#public
# そのメソッドが定義されたクラス内、サブクラス、クラス外（インスタンス）のどこからでもアクセス可能です。

# private
# メソッドは、クラスの内部（定義クラスとサブクラス）からのみアクセス可能。
# レシーバを指定して呼び出すのは不可で、クラス内部からでもインスタンスメソッドとしては使えない。

# protected
# メソッドは、クラスの内部（定義クラスとサブクラス）からのみアクセス可能。
# レシーバを指定して呼び出すことができ、クラス内部からであればインスタンスメソッドとして使える。
# -------------------------------------------------------
module Movie 
    VERSION = 1.1
    def self.encode
        puts "encoding..."
    end
    def self.export  
        puts "exporting..."
    end
end

Movie.encode
Movie.export
p Movie::VERSION
# -------------------------------------------
module Number
    def self.plus(num1, num2)
        num1 + num2
    end
end
puts Number.plus(1, 2)
# ------------------------------------------
module TestModule  
    def Min(x, y)
        if x < y
            return x 
        else
            return y
        end
    end

    def Max(x, y)
        if x > y
            return x  
        else
            return y
        end
    end
    module_function :Min
    module_function :Max
    #module_functionでモジュール名を指定する必要がある
end

puts TestModule.Min(1,5)
puts TestModule.Max(1,5)
# ------------------------------------------------
module Debug
    def info
        puts "#{self.class} debug info ..."
    end
end

class Player  
    include Debug
end
class Monster 
    include Debug
end
#class クラス名
# include モジュール名
# end
#クラスにinclude モジュール名と記述することで、そのモジュールのインスタンスメソッドをクラスで使用出来るようになります。
Player.new.info
Monster.new.info
# -----------------------------------------------
module Greet 
    def say_hello
       puts  "Hello!"
    end
end

class Obj
    include Greet
end

Obj.new.say_hello
#インスタンスを作らないとエラーが発生
# ----------------------------------------------
#例外処理
class MyError < StandardError; end

x = gets.to_i

begin
  if x == 3
    raise MyError
  end
  p 100 / x
rescue MyError
  puts "not 3!"
rescue => ex
  p ex.message
  p ex.class
  puts "stopped!"
ensure
  puts "-- END --"
end
# ----------------------------------------------------
#例外とは「プログラム実行中のエラー」のこと
begin
    1/0
rescue StandardError => e
    puts e
    puts "０で割ってはダメです"
    puts e.class
    puts e.class.superclass  #StandardError 親クラス
    puts e.message
end

#beginブロックで例外が発生すると、beginブロックの処理は中断され、処理のフローはrescueブロックに移ります。
# そして、ここでは、resucueブロックで、"0で割ってはダメです！"と表示しています。
# その後、biginブロックへは復帰せず、endまで処理が進んでいます。
#ZeroDivisionErrorクラスはStandardErrorクラスを継承しているので、この場合は例外を捕捉することができます。


#ZeroDivisionErrorが発生したときに行う例外処理, それ以外の例外は捕捉されません。
begin
    1/0
rescue ZeroDivisionError => e
    puts e.class #ZeroDivisionError
    puts e.message #divided by 0
end


def fullname(surname, firstname)
    # "#{sirname}"
end
    
begin
    1/3
    puts fullname("長瀬")
rescue ArgumentError, ZeroDivisionError => e
    puts e.class
    puts e.message
end
#例外の有無に関わらず実行するensure
begin
    1/0
rescue => e 
    puts e
ensure
    puts "ensure"
end

#例外が発生しない場合でも、ensure句のブロックは実行されます。
begin
    1/1
rescue => e 
    puts e 
ensure
    puts "ensure"
end
#retryメソッドは、beginからの実行を、もう一度やり直す際に使うメソッドです
count = 0
begin
    1/0
rescue
    p count += 1
    retry if count < 5
    #rescueブロックで、元のエラーの状況が改善し、再びbeginブロックの処理を行うことができるようになった場合、retryメソッドを使って、処理のフローを再びbeginブロックの先頭に移します。
    puts "これ以上は無理でした"
end
# ------------------------------------------------------

# 意図的に例外を発生させるraise
begin
    raise
rescue
    p "例外です"
end

begin
    raise ZeroDivisionError
rescue => e 
    p e.class
end
#ZeroDivisionErrorの例外を発生させた後に、rescueで捕捉し、どの例外かを出力しています。

#File.openで考慮すべき例外
begin
    File.open('sample1.txt') do |file|
        file.each_line do |line|
            puts line
        end
    end
rescue SystemCallError => e  
    puts "class=#{e.class}, message=#{e.message}"
rescue IOError => e 
    puts "class= #{e.class}, message= #{e.message}"
end
# SystemCallError > IOError 
# ------------------------------------------------------------
# 70. Climbing Stairs

def climb_stairs(n)
    return 1 if n == 1

    first   = 1
    second  = 2

    for i in (3..n)
        third   = first + second
        first   = second
        second  = third
    end
    
     return second 
end
p climb_stairs(4)

# -----------------------------------------------------------------
#83. Remove Duplicates from Sorted List
# def delete_duplicates(head)
#     curr = head

#     while curr 
#        while curr.next && curr.next.val == curr.val
#         curr.next = curr.next.next
#        end
#        curr = curr.next
#     end
    
#     return head
# end
# hoge = [1,1,2]
#  delete_duplicates(hoge)


def delete_duplicates(head)
    return if head.nil?
    curr = head
    while(curr.next) do
        if curr.val == curr.next.val
            curr.next = curr.next.next
        else
            curr = curr.next
        end
    end
    return head
end
hoge = [1,1,2]
# p  delete_duplicates(hoge)
# ---------------------------------------------------------------
# 88. Merge Sorted Array

def merge(nums1, m, nums2, n)
    nums1 << nums2 #[1, 2, 3, 0, 0, 0, [2, 5, 6]]
    nums1.flatten! #[1, 2, 3, 0, 0, 0, 2, 5, 6]
   
    until nums1.length == m + n 
       nums1.delete(0) #0
    end
    nums1.sort!
      
end

# p merge([1,2,3,0,0,0], 3, [2,5,6], 3)
p merge([1], 1, [], 0)
# p merge([0], 0, [1], 1)
# ---------------------------------------------
#flattenは多次元の配列やハッシュ（Hash）を平坦化（1次元配列）にするためのメソッドです。

# オブジェクト.flatten
# オブジェクト.flatten(階層)
# flattenメソッドは多次元の配列、ハッシュを平坦化して値を返します。
# 引数を指定しない場合は1次元の配列を返します。
# 引数を指定した場合は何階層目まで平坦化するかを指定できます。 

array1 = [1,2,[3,4,5,[6,7,[8,9]], 10]]
p "変更前：#{array1}"

# 多次元配列を1次元配列にする
array2 = array1.flatten 
p "変更後：#{array2}"


# 配列を定義
array1 = [1, 2, [3, 4, 5, [6, 7,[8, 9]], 10]]
 
p "変更前：#{array1}"

## 多次元配列を1次元配列にする
array2 = array1.flatten(2)
p "変更後：#{array2}"

#ハッシュを1次元配列にする
hash1 = {apple: 100, orange: 80, melon: 600}
puts "変更前：#{hash1}"

## ハッシュを1次元配列にする
hash2 = hash1.flatten
puts "変更後：#{hash2}"

array = [1,2,[3,4,5,[6,7,[8,9]], 10]]
array.flatten!
p "変更後：#{array}"
#"変更後：[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]"

# -----------------------------------------------------
# 配列の要素を削除する場合はdelete()を使用します。
# 配列.delete(削除する要素)
a = [1,2,2,3,3,3,2]
a.delete(2)  #配列の中に２があったら削除する
print a

#指定位置の要素を削除
# 配列.delete_at(削除位置)
a = ["a", "b", "c", "d", "e"]
a.delete_at(3) #インデックス番号を指定する
p a

#先頭の要素を削除
# 配列.shift(削除する要素の数)
#引数には削除する要素の数を指定します。引数を省略した場合は先頭の要素が１つだけ削除されます。
a1 = [1,2,3,4,5]
a1.shift()
p a1


a2 = [1,2,3,4,5]
# a2.shift(2)
# p a2

a2.shift(3) #配列a2の左から指定した要素の番号まで削除される　上記の例のコメントアウトを外した場合、処理が引き継がれてしまうため、配列の要素は空になった
p a2

#配列から指定範囲の要素を削除する場合はslice!()を使用します。
#配列.slice!(削除開始位置, 削除する長さ)
a = ["a", "b", "c", "d", "e"]
p a.slice!(1,3)  #インデックス番号１番目から３番目まで削除される /
#["b", "c", "d"] 削除された部分が配列として帰ってくる！

p a #["a", "e"]


a = ["a", "b", "c", "d", "e"]
p a.slice(1..3) #["b", "c", "d"] 削除された部分が配列として帰ってくる！
p a #["a", "b", "c", "d", "e"] 


#slice!()ではなく、slice()を使った場合は削除された配列を戻り値として返し、元の配列を変更されないので注意してください。
# --------------------------------------------------------

a = [2,3,1,4,5,1]
p a.sort #[1, 1, 2, 3, 4, 5]
# 昇順で並び変えることが出来る（新しい順）

a = [2,3,1,4,5,1]
p a.sort.reverse #[5, 4, 3, 2, 1, 1]

#sort_byメソッドでも同様の処理が可能です。
# sortメソッドとの違いはsort_byメソッドではブロックを用いて処理を実行するという点です。

a = [2,3,1,4,5,2,3]
p a.sort_by {|a| a} #[1, 2, 2, 3, 3, 4, 5]
p a.sort_by {|a| a}.reverse #[5, 4, 3, 3, 2, 2, 1]


#例えば文字列だど、文字の数でsortが可能
# s = ["c","bb", "aaa"]
s = ["aaa", "c", "bb"]
p s.sort_by {|array| array.size} #["c", "bb", "aaa"]
# -----------------------------------------------------------
h = {"def" => 2, "ghi" => 1, "aaa"=>4, "abc" => 3, "z"=>1}
p h.sort
# [["aaa", 4], ["abc", 3], ["def", 2], ["ghi", 1],["z", 1]]
#キーの値の昇順でソートされる
#ハッシュでsortを使う場合、戻り値は2次元の配列になっている
p h.sort.reverse
p h.sort.to_h #ハッシュに変換される
p h #{"def"=>2, "ghi"=>1, "aaa"=>4, "abc"=>3, "z"=>1} そのまま