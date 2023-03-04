

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