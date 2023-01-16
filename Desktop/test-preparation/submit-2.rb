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