

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