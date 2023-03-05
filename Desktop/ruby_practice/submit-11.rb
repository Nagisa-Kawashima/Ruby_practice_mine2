

a = 3.times.map { gets.split(" ").map(&:to_i) }   
# p a #[[8, 1, 3], [1, 2, 3], [3, 1, 8]]
a.each { |line| puts line.join(" ")}

# --------------------------------------------------------
input_line = gets.to_i

a = input_line.times.map { gets.split.map(&:to_i) }

a.each { |row| puts row.join(" ")}
# puts "XXXXXX"
# --------------------------------------------------------
n = gets.to_i

a = Array.new(n).map { Array.new(3) }
            #行　　　　　　#列
n.times do |i|
  row = gets.split(' ').map(&:to_i)
  3.times { |j| a[i][j] = row[j] }
end

a.each { |row| puts row.join(' ') }

# --------------------------------------------------------
m = gets.to_i

a = Array.new(3).map { Array.new(m) }
3.times do |i|
  row = gets.split(' ').map(&:to_i)
  m.times { |j| a[i][j] = row[j] }
end

a.each { |row| puts row.join(' ') }

# -----------------------------------------------
m = gets.to_i
a = 3.times.map { gets.split.map(&:to_i) }

a.each { |row| puts row.join(' ') }

# --------------------------------------------
n, m = gets.split.map(&:to_i)
a = n.times.map { gets.split.map(&:to_i) }

a.each { |row| puts row.join(' ') }

# --------------------------------------
n = gets.to_i

n.times do
  a = gets.split(' ').map(&:to_i)
  m = a.shift #先頭の配列を取り除く 
  puts a.join(' ') #join 配列の要素を連結した文字列にして返すもの
end

(1...1000).each do |i|
    p i
  end

  1000.times do |i|
    p i + 1
end
# ------------------------------------------------
for i in (1..10)
    # print(i + 1 + " ")
    number = i 
    print number.to_s  + " "
end
# ------------------------------------------
for i in (1..1000)
    # print(i + 1 + " ")
    number = i 
    # a =number.to_s  + " "
    # print a.chomp
    if i <= 999
        print number.to_s  + " "
    else    
        print number
    end
end
# ---------------------------------------------
input_line = "paiza" + " "
input_line1 = "learning"

input_line << input_line1

print input_line
# ---------------------------------------------
9.times do
  input = gets
  print input.chomp + " "
end
 input1 = gets  
 puts input1
# ----------------------------------------------

input_line = gets.to_i
# puts "XXXXXX"

num = gets
array = num.split #splitメソッドは文字列を分割して配列にする
array.each do |line|   
    puts line
end
# p array
# --------------------------------------------
input_line = gets.to_i
input_line.times do   
    if input_line >=2 
        puts 1
        puts input_line
    
    else
        puts input_line
    end
end
# ------------------------------------
input_line = gets.to_i
# input_line.times do   
    if input_line ==2 
        puts 1
        puts input_line
    
    else
        puts input_line
    end
    # ----------------------------------------

input_line = gets.to_i
# puts "XXXXXX"
# (1..input_line).times do   
for i in 1..input_line   
  puts i
end
# ----------------------------------------------
input_line = gets
array = input_line.split.join(",")
#splitメソッドは文字列を分割して配列にする
#配列の中の用をすべて指定された引数の文字列にて結合させる
#文字列を返す
puts array

#[1, 2, 3].join('-') #=> "1-2-3"　

# --------------------------------------------------------------------------------
input_line = gets.chomp
# array = input_line.to_a
array = []
array.push(input_line)

input_line2 = gets.chomp
array.push(input_line2)
input_line3 = gets.chomp
array.push(input_line3)
# p array

puts array.join("|")
#以下リファクタリング↓
array = []
3.times do 
  
    input_line = gets.chomp
    array.push(input_line)
end


puts array.join("|")
# --------------------------------------
input_line = gets
array = input_line.split.join(",")
puts array + ","
# ----------------------------------------
input_line = gets
array = input_line.split.join(",")
puts array 

# -------------------------------

n, m = gets.split.map(&:to_i)
array = []
(n-1).times do   
    number = gets.to_i
    array.push(number)
   
end
size =array.length
p size
for i in 1..size do    
    
end
a =array[size] - array[size - 1]
a =array[size - 1] - array[size - 2]
a =array[size - 2] - array[size - 3]

#  p array
# ----------------------------------------
array = []
10.times do 
  
    input_line = gets.chomp
    array.push(input_line)
end


puts array.join(" | ")
#半角区切りにしたいなら結合にスペースあけるだけ


# split([sep[, limit]])
# "文字列".split(区切り文字, 分割数)
# -------------------------------------------
input_line = gets.to_i

puts input_line.to_s.reverse.gsub( /(\d{3})(?=\d)/, '\1,').reverse

# -----------------------------------------------------
input_line = gets.to_i

puts input_line.to_s.reverse.scan(/.{1,3}/).join(",").reverse
# scan メソッドで、正規表現にマッチした部分を繰り返して配列を取得。ここでの正規表現は「なんでもいいから少なくとも1文字、多くて3文字」にマッチする
# --------------------------------------
print("0 8\n1 3")

# -------------------------------------

input = gets.split("")
# p input
array = input.map(&:to_i)
# 数字の配列に変換
# p array

# 
array.each do   |i|
    if i == 2 || i ==5 || i == 8
        puts i
    else     
        print i.to_s + " "
    end
end
# ---------------------------------------------
input = gets.chomp.split(" ")
# p input
array = input.map(&:to_i)
# p array
# 
# array.each do   |i|  
for i in array do   
    if i % 3 == 2
        puts i
    else     
        print i.to_s + " "
    end
end