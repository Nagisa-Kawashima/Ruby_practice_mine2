nums = [2,7,11,15]
target = 9
def two_sum(nums, target)
    hash = { }
     
     nums.each_with_index do |value, index| 
         difference = target - value
         if hash.key?(difference) 
             return [hash[difference], index]
         end
 
         hash[value] = index
     end
end
 
puts two_sum([3,3], 6)

# --------------------------------------------------
# 9. Palindrome Number
# Given an integer x, return true if x is a 
# palindrome
# , and false otherwise.
def is_palindrome(x)
    return false if x < 0
    return x.digits.join.to_i == x
end

puts is_palindrome(125)

p 1231.digits
# [1, 3, 2, 1]

p 174893.digits
# [3, 9, 8, 4, 7, 1]

p 16.digits(16)
p 16.digits(15)
p 16.digits(14)
p 16.digits(17)
p 16.digits(18)
# ----------------------------------
# 3桁の整数があります。その整数の 「百の位・十の位・一の位の和」 を出力し、10の倍数との差を出力するプログラムを書いてください。
# 最大でも(9,9,9) 和は２７で１０の倍数との差はあまり７となる

# 10の倍数との差が 2 以内であればTrue・・(3桁の整数の和が０，１，２、８、９)が対象となる
# それ以外であれば 10の倍数との差は◯です
# ただし、10の倍数との差が近い方を出力する。

def near_ten_multiple(i)
    num = i.digits.take(3) #[7, 1, 1]
    sum = (num.sum) % 10 #3桁の合計を取得し1の位を取得

    if sum <= 2 || sum >= 8
        p "true"
    elsif sum >= 5 
        p "10の倍数との差は#{10 - sum}です" #近いほう5,6,7
    else
        p "10の倍数との差は#{sum}です" #それ以外の3,4
    end

end

p near_ten_multiple(999)







# ----------------------------------------------
array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
p array.sum
#sumメソッドは配列や範囲オブジェクトの合計値を求めるときに使用します。
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p array.sum {|num| num*10}
#ブロック処理で各要素に10を書けた結果の合計値
array =[1,2,3,4,5,6,7,8,9]
p array.sum / array.length
#平均値を求める
range = 1..10
p range.sum

fruits =["apple", "berry", "banana"]
fruits.each do |hoge|
    print hoge + ","
end
array = [1, 2, 3, 1, 2, 3, 4, 1, 2, 3, 4, 5]
p array.count(2) # 実行結果 3
#count は同じ値がいくつあるか調べる場合に使う

arr =[]
p arr.empty?
arr =[1,2,3]
p arr.empty?

array =[1,2,3]
p array.include?(3)
#指定した要素が配列に含まれているのか

array =[1,2,3]
p array.any?{|a| a > 2}
#配列の中に１でも条件を満たす要素が含まれているか調べるany?メソッド

array_1 =[1, 1, 2, 2, 3, 3, 4, 5, 7]
array_2 =[1, 2, 3, 3, 6, 7, 8]
p array_1 & array_2
#[1, 2, 3, 7]
# &(積集合)2つの配列の積集合を作成する、そして新しい配列を作る

array =[1,2,3]
p array*5
#arrayの中の要素を５回繰り返した配列をさくせいする
#[1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3]

array = ["hoge", "Ruby", "kawashima"]
p array + ["magisa", "hogehoge"]
# ["hoge", "Ruby", "kawashima", "magisa", "hogehoge"]
array_1 =[1, 1, 2, 2, 3, 3, 4, 5, 7]
array_2 =[1, 2, 3, 3, 6, 7, 8]
p array_1 - array_2
#重複している要素が取り除かれた配列の作成 差集合
# [4, 5]

p array_1 | array_2
# 和集合
# [1, 2, 3, 4, 5, 7, 6, 8]


# ---------------------------------------------



# 13. Roman to Integer

def roman_to_int(s)
    hash = {
        "I" => 1,
        "V" => 5,
        "X" => 10,
        "L" => 50,
        "C" => 100,
        "D" => 500,
        "M" => 1000
    }
    substractions = {
        "IV" => 4,
        "IX" => 9,
        "XL" => 40,
        "XC" => 90,
        "CD" => 400,
        "CM" => 900
    }
    i = 0
    res = 0
    while i < s.length
        val = if (current = substractions[s[i..(i+1)]])
            i+= 1
            current
        else
            hash[s[i]]
        end
        res += val
        i+=1
    end
    res
end
p roman_to_int("III")
p roman_to_int("LVIII")
p roman_to_int("MCMXCIV")
# -------------------------------------------------------
# 14. Longest Common Prefix

def longest_common_prefix(strs)
    prefix = ""
    length = strs.map( &:length).min
    0.upto(length - 1) do |i|
        char = strs[0][i]
        strs.each { |s| return prefix if s[i] != char }
        prefix += char
    end
    prefix
end
p longest_common_prefix(["flower","flow","flight"])

# --------------------------------------
language =["Ruby", "Rails", "Python", "Swift", "Java", "PHP"]

p language.map {|a| a.upcase}
    #配列の要素分処理を繰り返したい時 
    # 配列のオブジェクトlanguageの要素を一つずつ取り出して指定した変数aに代入する
    #返り値は配列となる

# オブジェクト名.map { |変数|
# 実行する処理
# }
# map

array = [10, 20, 30, 40, 50]
p array.map{|x| x*2}
# p array

hash1 = {ruby:"rails", php:"cakePHP",java: "spring"}
# has
hash1.map {|k, v| v.upcase}
p hash1


numbers = [10, 20, 30, 40]
p new_numbers = []
p numbers.each {|n| new_numbers << n*2}
p new_numbers

numbers = [10, 20, 30, 40]
p new_numbers = numbers.collect{|n| n*2}


# mapメソッド は、データ構造を保ったまま、あるルールに従い元のデータ構造を別データ構造に変換する発想です。

# collect メソッドは、データ構造内の全ての要素に対して、ある処理を繰り返し実行し、その結果を集めたものという発想です。
# mapもcollectも動作は同じ

p ["RUBY", "PHP", "JAVA"].map {|s| s.downcase}

p ["RUBY", "PHP", "JAVA"].map(&:downcase)
#ブロック引数のｓが一つで、downcaseに引数がなく、sに対してメソッドを呼び出しているだけの場合&:で省略してコードを書くことが出来るp
p h = {BANANA: 100, ORANGE: 200, MELON: 300}
p h.map {|key, value| [key.downcase, value]}.to_h


array = ["a", "b", "c"]
p array.map {|s| s.upcase}

def filter_r20_arr(age)
    age if age >= 20
end

ages = [9,11,23,45,66,12,77]
p filtered_r20_arr = ages.map {|age| filter_r20_arr(age)}
p filtered_r20_arr.compact
#compact 配列からnilの要素を取り除いて新たな配列を作り出すメソッド
# ------------------------------------------------
# upto メソッドは指定した開始数から最大数まで 1 つずつ増加しながら繰り返しを行いたいときに使用します。次のように使用します。

# オブジェクト.upto(max){|変数|
#   実行する処理1
#   実行する処理2
# }

# オブジェクト.upto(max) do |変数|
#     実行する処理1
#     実行する処理2
# end
#   オブジェクトに指定した数値が max よりも大きい場合は繰り返し処理は行われません。
# upto メソッドは、変数に「オブジェクト」から max までの数値を順に代入しながら { から } までの処理(又は do から end までの処理)を実行します。 1 回繰り返す毎に 1 ずつ数値は増加します。(「|変数|」の部分は省略可能です)。


# -------------------------------------------
3.upto(7) do |num|
    puts ("num = "+ num.to_s)
end

# puts("3.times")

3.times{|num|
    puts("num = " + num.to_s)
}

# puts("6.upto(8)")
6.upto(8) {|num|
    puts("num = " + num.to_s)
}

8.downto(6) do |num|
    puts("num = " + num.to_s)
end
# ----------------------------------?
# 20. Valid Parentheses

def open_bracket?(char)
    # char == '(' || char == '{' || char == '['
    ['(', '{', '['].include?(char)
end

def matching?(prev, current)
    (prev == '(' && current == ')') || (prev == '{' && current == '}') || (prev == '[' && current == ']')
end

def is_valid(s)
    # ({[]})
    # []]]]]]
    # for each char
    stack = []
    for i in 0...s.size
        char = s[i]
        if open_bracket?(char)
            stack.push char
        else
            prev = stack.pop
            return false if prev.nil? || !matching?(prev, char)
        end
    end
    stack.empty?
end
p is_valid("()[]{}")
p is_valid("(]")
p is_valid("()")
p is_valid("")
# ---------------------------------------
# for 変数 in オブジェクト do #doは省略しても良い
#オブジェクトには配列や範囲オブジェクトの値を渡している

#     処理
# end
array = [1,2,3,4,5]
for i in array do
    puts i  
end

for i in 1..5 do
    puts i
end
for i in 1...5 do #1-4まで
    puts i
end

for i in 1..5 do
    if i == 4
        next #nextメソッドは名前の通り処理をスキップして次の処理に向かう事ができるメソッド
    end
    puts i
end

for i in 1..5 do
    if i== 4
        break
    end
    puts i
end

for i in 1..6 do #1,2,3,5,5,6となる、条件を一度満たしたら終わるまで無視して繰り返し処理されるもの
    if i ==4
        i =5
        redo
    end
    puts i
end
# --------------------------------------------------------
# popメソッドとは、rubyのArrayクラスが持っており、配列の末尾の要素を削除するメソッドです。
# また、popメソッドに引数を渡すことで、削除する要素の個数を指定することもできます。

# 削除された要素は、popメソッドの戻り値として渡されます。

# 削除する要素がなかった場合は、nilが返ってきます。
p array = [1,2,3]
p array.pop #削除された要素3を表示する
p array #[1, 2]

p array= [1,2,3]
p array.pop(2) #[2, 3]
p array #[1]
# --------------------------------------
p array= [1,2,3]
p array.shift
p array
p array= [1,2,3]
p array.shift(2)
p array
# --------------------------------
#pushメソッドは、末尾に追加したい要素を引数で渡します。
# 引数に複数要素を入れてあげるだけで、末尾に複数の要素を追加できます。
# popメソッドやshiftメソッドと違い、pushメソッドは追加した配列自身が戻り値となることに注意が必要です。

p array = [1,2,3,4]
p array.push(5)
p array

p array = [1,2,3,4]
p array.push(5,6)
p array




