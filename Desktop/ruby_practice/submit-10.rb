a = gets.split(' ').map(&:to_i)
# Enumerable#map（EnumerableはArrayの親クラス）はブロックを受け取り、配列の各要素を引数としてブロックを評価し、結果を配列にして返すメソッドです
# 各要素にto_iを行い整数の配列とする
p a
n = a.shift
p n
# shift...配列の先頭の要素を取り除いてそれを返します。引数を指定した場合はその個数だけ取り除き、それを配列で返します。

a.each { |val| puts val }
p a

# [1, 100, 200]
# 1
# 100
# 200
# [100, 200]



a = [0, 1, 2, 3, 4]
p a.shift            #=> 0
p a                  #=> [1, 2, 3, 4]


input_line = gets.split(" ")
# a = input_line

n = input_line.shift   

input_line.each { |val| puts val }
# puts "XXXXXX"


input_line = gets.to_i
# puts "XXXXXX"

# input_line.times do 
    
   input = gets.split(' ').map(&:to_f)   
    input.each do |i|
        puts i 
    end
# end


input_line = gets.split(" ").map(&:to_f)


n = input_line.shift


input_line.each { |val| puts val }
# puts "XXXXXX"


n = gets.to_i

a = Array.new(n)
b = Array.new(n)
n.times { |i| a[i], b[i] = gets.split(' ').map(&:to_i) }

puts a[7].to_s + ' ' + b[7].to_s


input_line = gets.to_i
# puts "XXXXXX"

input_line.times  do   
    line = gets   
    print line
end


n = gets.to_i
# puts "XXXXXX"

a = Array.new(n)
#配列の長さを数値で指定します。
b = Array.new(n)

n.times { |i| a[i], b[i] = gets.split(" ")}
#、結果を文字列の配列で返します。ブロックを指定すると、配列を返す代わりに分割した文字列でブロックを呼び出します。
puts a[7].to_s + ' ' + b[7].to_s


3.times do  
    input_line = gets
    print input_line
end

# --------------------------------------------------------------------
m = gets.to_i

a = Array.new(3).map { Array.new(m) }
3.times do |i|
  row = gets.split(' ').map(&:to_i)
  m.times { |j| a[i][j] = row[j] }
end

a.each { |row| puts row.join(' ') }
# ------------------------------------------------------

a = Array.new(3).map { Array.new(n) } で 3 行 n 列の 2 次元配列を用意できます。
イメージとしては、
まず、a = Array.new(3) で配列を 3 本用意して、map メソッドで各要素に長さ n の配列を設定する感じです。
2 重ループで入力を受け取っています。
3.times 直下で入力を 1 行受け取る
3.times 内で n.times を用いて、配列 a の i 行 j 列目に要素を代入している
出力の際、join メソッドを用いると簡単に書くことができます。
以下に join メソッドについて簡単に説明します。説明文は「3 行 3 列の整数の入力」の解説の内容と同じです。
配列.join(結合文字) で 配列 の各要素間を 結合文字 で結合した文字列を生成することができる
# -----------------------------------------------------------------------------------
解答例 2
m = gets.to_i
a = 3.times.map { gets.split.map(&:to_i) }

a.each { |row| puts row.join(' ') }
3.times で生成される Enumerator オブジェクトに map メソッドを使って、各要素に入力を半角スペースで区切って整数に変換した配列を代入しています。

# ----------------------------------------------------------
a = 3.times.map { gets.split.map(&:to_i) }

a.each { |row| puts row.join(' ') }
