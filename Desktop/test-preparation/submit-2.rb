# 21. Merge Two Sorted Lists


def merge_two_lists(list1, list2)
    list3 = ListNode.new(0)
    head = list3
    while list1 && list2
        if list1.val <= list2.val
            list3.next = list1
            list1 = list1.next
        else
            list3.next = list2
            list2 = list2.next
        end
        list3 = list3.next
    end
    list3.next = list1 || list2
    head.next 
end
# hoge1 = [1,2,4]
# hoge2 = [1,3,4]
# p merge_two_lists(hoge1, hoge2)
# -----------------------------------------------
# 26. Remove Duplicates from Sorted Array
def remove_duplicates(nums)
	# Values at this index and below are as we want them in the solution.
    # このインデックス以下の値は、ソリューションで必要とされる値です。
	# The first value (index 0) will always be the same as in the input.
    # 最初の値（インデックス0）は、常に入力と同じになります
	solved_marker = 0

	nums.each_with_index do |num, i|
	  # If we encounter a number that's not in the solution yet, insert it
    #   まだソリューションにない数字に出会ったら、それを挿入する
	  # at the next open spot and increment the solved_marker.
      #を次の空いている場所に配置し、solved_marker をインクリメントする
	  if num != nums[solved_marker]
		solved_marker += 1
		nums[solved_marker] = num
	  end
	end
    
	# The length of the unique part of the array will be one greater than its highest index
    # 配列のユニーク部分の長さは，その最大インデックスより1大きい値となります。
	solved_marker + 1
end
hoge = [1,1,2] #2
hoge1 = [0,0,1,1,1,2,2,3,3,4] #5
p remove_duplicates(hoge1)
# ----------------------------------------------------------
# 27. Remove Element
def remove_element(nums, val)
    size = nums.size
    left = 0
    right = size - 1
  
    while left <= right
        # 「より小さいか等しい」比較演算子
      # we are iterate till the right as if we iterate before right we might miss the last elements 
    #   というのも、右より前に反復すると、最後の部分を見逃す可能性があるからです。
        if nums[left] == val
        # if the index is matches we will delete it and short the right index also
        # インデックスが一致した場合、それを削除し、正しいインデックスをショートさせます。
        nums.delete_at(left)
        right -= 1
      else
        # if not matched , we will move forward
        #マッチングが成立しない場合は、先に進みます。
        left += 1
      end
    end
    nums
  end
  
  p remove_element([3,2,2,3] ,3)
  p remove_element([0,1,2,2,3,0,4,2] ,2)

array = [0, 1, 2, 3, 4]
array.delete_at 2 #配列に格納されている要素の中で指定したインデックスの要素を取り除くことが出来る
p array             #=> [0, 1, 3, 4]
# -----------------------------------------------------
# 35. Search Insert Position
def search_insert(nums, target)
    
end
def search_insert(nums, target)
    for index in 0...nums.size
        if nums[index] >= target
            return index
        end
    end    
    return nums.size
end
number = [1,3,5,6]
# hoge = 5
# hoge = 2
hoge = 7
p search_insert(number, hoge)
# -----------------------------------------
# while文やuntil文は条件が真か偽かで繰り返し処理を行う
#     for文では指定したオブジェクトから値がなくなるまで繰り返し処理を行うもの
#         for 変数 in オブジェクト do
            # for 文で指定できるオブジェクトは each メソッドを持ったオブジェクトでなければなりません。例えば配列やハッシュ、範囲オブジェクトなどが該当します。
            #繰り返し１回ごとにオブジェクトに対してeachメソッドを実行し、取得した要素を変数に代入する
            # 　　　　　  ^^

        #     実行する処理1
        #     実行する処理2
        # end
        
# ------------------------------------------------------------
# 58. Length of Last Word
def length_of_last_word(s)
	s.strip.split.last.length
	# s.strip.splitで["Hello", "World"]になる

end

p length_of_last_word("Hello World")

def length_of_last_word(s)
    word_end_pointer = word_start_pointer = -1
    
    while s[word_end_pointer] == ' '
        word_start_pointer -= 1
        word_end_pointer -= 1
    end
    
    while s[word_start_pointer - 1] != ' ' && !s[word_start_pointer - 1].nil?
        word_start_pointer -= 1
    end
        
    word_end_pointer - word_start_pointer + 1
end

p length_of_last_word("Hello World")
# ----------------------------------------------
test = " hogehoge  "
test = " hogehoge  　" #文字列末尾の空白は全角なのでこの全角の空白ごと削除されなくなる
p result = test.strip
#stripメソッドとは、レシーバーの文字列から先頭と末尾の空白を削除した文字列を返すメソッドです。
# 文字列の真ん中にある空白は削除されない
# 全角の空白が前後にあれば削除されない

apple = " リンゴ "
apple_remove = apple.strip
puts "削除前#{apple}"
puts "削除後#{apple_remove}"
# ---------------------------------------------------
# lastメソッドとは、配列の最後の要素を取得して返すメソッドです。
numarray = [9, 8, 0, -6, 5]
emparray = []
 
puts "・確認する配列"
puts "#{numarray}"
puts "#{emparray}"
# puts
 
puts "・パターン1:引数がない場合"
puts "#{numarray.last}"
puts "#{emparray.last}"
puts
 
puts "・パターン2:引数がある場合"
puts "#{numarray.last(3)}"
puts "#{emparray.last(3)}"

sample = [1,2,3]
p result = sample.last #3
result = sample.last(2) #[2, 3]
# ---------------------------------
# 66. Plus One
# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    (digits.join.to_i + 1).to_s.split("").map { |s| s.to_i }
              #124       #"124"  #["1", "2", "4"]   #[1,2,4]
    # mapメソッドはhash(ハッシュ)でも使用することができますが、返り値は配列
    ##splitは文字列を分割して配列にするメソッド
end
p plus_one([1,2,3])

# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    digits.join.to_i.next.digits.reverse
             #123 #124 #[4, 2, 1] #[1,2,4]
    # digitsは数値を一桁ずつ配列で返してくれるメソッド
end

p plus_one([1,2,3])
# --------------------------------------------------
# splitメソッドは第1引数に区切り文字を指定できますが、引数を指定しない場合は空白文字で区切られます。

# 空白文字として扱われるのは、” “(半角スペース)、”\n”(改行コード)、”\t”(タブ)などです。
str = "kawashima nagisa string"
array = str.split
p array
#["kawashima", "nagisa", "string"]

p "1 23  456".split
p "1 23   456".split
p "1 23    456".split  #半角スペースがあっても結果は同じになる

#splitメソッドで任意の文字で分割するには、第1引数で指定します。
# 文字列.split(区切り文字)

str = "kawashima hoge hoge"
p array = str.split("\n")
str = "123456"
array = str.split("34")
p array  #["12", "56"]

# 文字列.split(正規表現)
str = "1,23.456"
array = str.split(/[,|.]/)
p array
#文字列を1文字ずつ分割するには、区切り文字に""(ブランク)を指定します
str = "123456"
array = str.split("")
p array #["1", "2", "3", "4", "5", "6"]

#分割数を指定することで、分割した後の配列の要素数を指定することができます。
# 分割数はsplitメソッドの第2引数で指定します。
# 文字列.split(区切り文字, 分割数)
str = "1,2,3,4,5,6"
array = str.split(",",2)
p array #["1", "2,3,4,5,6"] 分割数が文字列に含まれる区切り文字より少ない場合は、文字列の前方を優先して分割します。
p array = str.split(",",4) #["1", "2", "3", "4,5,6"]
# =======splitメソッドは文字列を分割して配列にするもの
                    #  ^^^^^
# ----------------------------------------------------------
num = 3259
num.digits => [9,5,2,3]
puts num.digits[3] #3
puts num.digits[2] #2
puts num.digits[1] #5
puts num.digits[0] #9

# ------------------------------------------------
# Integerは数値を意味するNumericクラスを親に持っていて、小数のクラスFloatも同じようにNumericを親に持ちます。
# is_a?メソッドの特性を利用してNumericクラスとの比較を行うことで、小数を含む数値全般かどうかのチェックができます。
def double(n)
    if n.is_a?(Numeric)
        n*2
    else
        "#{n}は数値ではありません"
    end
end
p double("hoge")

#instance_of?メソッドは、自分のクラスについてのみのチェックとなるため、is_a?のように親のクラスや、インクルードしているモジュールのチェックはできません。
# 厳密なチェックをしたい場合に利用すると良いでしょう。

def double_integer(n)
    if n.instance_of?(Integer)
        n*2
    else
        "#{n}は整数ではありません"
    end
end
p double_integer(4)

# classメソッドは、自分のクラスが返ってくるため、チェックしたいクラスとの比較をすると良いでしょう。
#     処理としては、instance_of?と同様の結果になります。
def double_integer(n)
    if n.class == Integer
        n*2
    else
        "#{n}は整数ではありません"
    end
end
p double_integer(4)

def double(n)
    if Numeric === n
        n*2
    else
        "#{n}は数値ではありません"
    end
end
p double(4)

# Numeric クラス自身は数値を扱う抽象クラス
#-----サブクラスとして Integer クラスと Float クラスがあります。
# integerの中に↓
# Fixnumは速度を重視した、小さな整数についての型
# Fixnumに入り切らないサイズの整数はBignum