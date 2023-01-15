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