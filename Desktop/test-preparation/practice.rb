# 変数
# - 英小文字 _

msg = "hello world"
puts msg

msg = "hello world kawashima"
puts msg

# 定数
# - 英大文字

VERSION = 1.1
puts VERSION
# VERSION = 1.2
# puts VERSION

# warning: already initialized constant VERSION
# practice.rb:13: warning: previous definition of VERSION was here との警告が表示される

p 4.8.class
p 4.8.methods


p 10 + 3
p 10 * 3
p 2.4 * 2
p 10 / 3
p 10 % 3
p 10.0 / 3
p Rational(2, 5) + Rational(3, 4)
p 2/5r + 3/4r

p 52.6.round #四捨五入
p 52.6.floor #小数点以下切り捨て
p 52.6.ceil #小数点以下切り上げ


# -----------------------------------
# 文字列
# "" 特殊文字 式展開が可能
# ''　中に書いたものはそのまま文字列として扱われる

puts "hell\no wor\tld"
puts 'hell\no wor\tld' #そのまま表示される

puts "price #{3000 * 4}"
puts 'price #{3000 * 4}' #そのまま表示される

name = "kawashima"
puts "hello#{name}"

puts "hello" + "world" #文字列の連結
puts "hello" * 10 #繰り返し表示する

# -----------------------------------------
name = ""
puts name.upcase #すべて大文字で返される
puts name #通常通り返される

puts name.upcase!
puts name.upcase #上記の破壊的メソッドによって下のnameで定義している内容がすべて大文字に入れ替わる

#真偽値を返すメソッド
p name.empty?
p name.include?("A")
# ----------------------------------------------------

a = [2,3,4,5,6,1]
# a = [2,3,4,22,1,9]
p a.sort #昇順
p a.sort.reverse #降順
p a.sort_by {|a| a}
p a.sort_by {|a| a}.reverse

s = ["aaaaa", "b", "tt"]
p s.sort_by { |array| array.size} #文字の数で並び替えが出来る

h = {"def"=> 2, "ghi"=> 1, "abc"=> 3}
p h.sort.reverse
p h
# ---------------------------------------------------------
array = [  {"name" => "うどん", "price" => "300"},  {"name" => "パスタ", "price" => "700"},  {"name" => "ラーメン", "price" => "500"}]#一緒
p array.sort {|x, y| x["price"] <=> y["price"] }


# self <=> otherのような条件であった場合、selfが大きい時に正、等しい時は0、小さい時に負の整数を返す比較メソッドです。Rubyではこの<=>メソッドを使うことにより、大小比較の条件を非常にシンプルに記述できます。


#sort_byメソッドではブロックでソートする値を必ず指定します。
arrayq = [300, 200, 150, 400, 100]
p arrayq.sort_by {|value| value}


array = [  {"name" => "うどん", "price" => "300"},  {"name" => "パスタ", "price" => "700"},  {"name" => "ラーメン", "price" => "500"}]#一緒

p array.sort_by {|x| x["price"] }
# ------------------------------------------------------------------


h = {"def"=>2, "ghi"=>1, "abc"=>3}
p h.sort_by{|k, v| v} #結果は2次元配列で返される　ブロック最後の式vがブロックの戻り値となる
p h #hの中身そのまま

h = {"def"=> 2, "ghi"=> 1, "abc"=> 3}
p h.sort
p h

#昇順小さい順、前から順（最新順）　#降順後ろから順（大きい順）

#降順（reverse）の場合
h = {"def"=>2, "ghi"=>1, "abez"=>4, "aaa"=>5}
p h.sort_by{|k, v| v}.reverse
p h

h = { "def" => 2, "ghi" => 1, "abc" => 3, "ddd" => 5 }
p h.sort{ | a, b | b[1] <=> a[1] }
# 降順でソートするには、ブロック変数を| a, b | とすると、並び替え用に <=> 演算子を b <=> a として用いた場合、aがbより小さい時はaが後に、aがbより大きい時はaが先に並び替えられます。

h = {"def"=>2, "ghi"=> 1, "abc"=> 3}
p h.sort.to_h
p h.sort.reverse.to_h
p h.sort_by{|k, v|v}.to_h
p h.sort{|h, g| g[3]<=>h[3]}.to_h
p h

#ハッシュとして扱いたい場合はto_hメソッドを使う


# ---------------------------------------------------------
colors = ["red", "blue", "yellow"] #(-3, -2, -1)
p colors[0]
p colors[-3]
p colors[0..2]
p colors[0...2] #2のインデックスは含まれない
p colors[5]

p colors[0] = "pink" #０番目の要素がpinkに変わる
p colors

p colors[1..2] =["white", "black"]
p colors.push("gold")
p colors << "silver"

p colors.size
p colors.sort
p colors.sort.reverse
# -----------------------------------------

p scores = {"taguchi"=> 200, "kawashima"=> 400}
p scores = {:taguchi=> 200, :kawashima=> 400}
p scores = {taguchi: 200, kawashima: 400}

p scores[:taguchi]
p scores[:kawashima]= 500 #値の変更と呼び出し
p scores
p scores.size
p scores.keys
p scores.values
p scores.has_key?(:kawashima) #true,falseで返してくれる

# ----------------------------------------------------
x= 50
y= "3"

p x + y.to_i
p x + y.to_f
p x.to_s + y

scores = {kawa: 200, shima: 100} 
p scores
p scores.to_a  #キーと値を配列に変換してくれる


p scores.to_a.to_h #ハッシュに変換してくれる
# ---------------------------------------------------------

puts "he\"llo"
puts 'he\'llo'

 puts %Q(he'llo)
 puts %(he'llo)
 puts %q(he'llo)

p ["red", "blue"]
p ['red', 'blue']

p %W(red blue) #大文字のW
p %w(red blue) #小文字のw

puts "hello"
puts 'hello'
puts %(hello)      #どれもすべて文字列として認識される
puts %Q(hello)

puts ["red", "yellow"]
puts ['red', 'blue']
p ["red", "yellow"]
p ['red', 'blue']

# ------------------------------------------------------
# %s 文字列
# %d 整数
# %f 浮動少数点数
p "name: %s" %"taguchi"
p "name: %10s" %"taguchi"
p "name: %-10s" %"taguchi"

p "id: %05d, rate: %10.2f" %[355, 3.284]
p printf("id: %05d, rate: %10.2f\n", 355, 3.284)
