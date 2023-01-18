# 94. Binary Tree Inorder Traversal

# def inorder_traversal(root)
#     result  = []
#     stack   = []
#     current = root

#     while current || !stack.empty?
#         while current
#             stack.push(current)
#             current = current.left
#         end
#         current = stack.pop
#         result.push(current.val)
#         current = current.right
#     end
    
#     return result
# end


# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer[]}
# def inorder_traversal(root)
#     @answer = []
#     q = []
#     q.push([root,0]) if root
#     while  ! q.empty?
#         a,point = q.pop
#         if point <= 0
#             if a.left
#                 q.push([a,1])
#                 q.push([a.left,0])
#                 next
#             end
#         end
#         if point <= 1
#             @answer.push(a.val)
#             q.push([a.right,0]) if a.right
#         end
#     end
#     @answer
# end

# p inorder_traversal([1,"",2,3])
# ----------------------------------------------------------------
# 100. Same Tree
# * Definition for a binary tree node.
#  * type TreeNode struct {
#  *     Val int
#  *     Left *TreeNode
#  *     Right *TreeNode
#  * }
#  */
# func isSameTree(p *TreeNode, q *TreeNode) bool {
#   if nil == p && q == nil { return true }
#   if nil == p || q == nil { return false }
#   if p.Val != q.Val { return false }
#   return isSameTree(p.Left,q.Left) && isSameTree(p.Right,q.Right)
# }

# def is_same_tree(pe, q)
#     return true if pe.nil? && q.nil?
#     return false if pe.nil? || q.nil?
#     qu1,qu2 = [[pe,0,0]],[[q,0,0]]
#     while (!qu1.empty?)&&(!qu2.empty?)
#       x1,s1,l1 = qu1.shift 
#       x2,s2,l2 = qu2.shift
#       return false if l1 != l2
#       return false if s1 != s2
#       return false if x1.val != x2.val
#       qu1.push([x1.left,0,l1+1]) if x1.left
#       qu1.push([x1.right,1,l1+1]) if x1.right
#       qu2.push([x2.left,0,l2+1]) if x2.left
#       qu2.push([x2.right,1,l2+1]) if x2.right
#     end
#     return false if (!qu1.empty?) || (!qu2.empty?)
#     return true
# end
# p is_same_tree([1,2,3], [1,2,3])

# def is_same_tree(p, q)
#     return false if !!p ^ !!q
#     return true unless p
#     return false unless p.val == q.val
#     is_same_tree(p.left, q.left) && is_same_tree(p.right, q.right)
# end

#  p is_same_tree([1,2,3], [1,2,3])
# ----------------------------------------------------------
# 101. Symmetric Tree
# def is_symmetric(root)
#     return true unless root
  
#     symmetric_trees?(root.left, root.right)
#   end
  
#   def symmetric_trees?(node1, node2)
#     return true if node1.nil? && node2.nil?
#     return false if node1&.val != node2&.val
  
#     symmetric_trees?(node1.left, node2.right) && symmetric_trees?(node1.right, node2.left)
#   end

# p is_symmetric([1,2,2,3,4,4,3])


# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} nums
# @return {TreeNode}

# def sorted_array_to_bst(nums)
#     @nums = nums
       
#     def bst_helper(l, r)
#         return nil if l > r
        
#         mid         = (l + r) / 2 # always choose the left middle as root
#         root        = TreeNode.new(@nums[mid])
#         root.left   = bst_helper(l, mid - 1) 
#         root.right  = bst_helper(mid + 1, r) 

#         return root
#     end

#     return bst_helper(0, @nums.length - 1)
# end

# p sorted_array_to_bst([-10,-3,0,5,9])
# --------------------------------------------------
# 118. Pascal's Triangle
def generate(num_rows)
    (num_rows-1).times.inject([[1]]) {|r, i| r << ([1] + r.last.each_cons(2).collect(&:sum) + [1]) }
end
p generate(5)
p generate(1)

# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
    result = [[1]]

    (num_rows - 1).times do
        prev_row = result.last
        row = [1]

        0.upto(prev_row.size - 2) do |i|
            row << prev_row[i] + prev_row[i + 1]
        end

        row << 1
        result << row
    end

    result
end
p generate(5)
p generate(1)
# --------------------------------------------------------------
# 119. Pascal's Triangle II
def get_row(r)
    return [1] if r==0
    ans = [1]
    temp = 1
    for i in 1...r do
        temp = temp * (r-i+1)/i
        ans << temp
    end
    ans << 1
    return ans
end
p get_row(3) #4段目の数字を出力
p get_row(0) #1段目の数字を出力
# --------------------------------------------------
# 121. Best Time to Buy and Sell Stock

def max_profit(prices)
    profit, min_price = 0, Float::INFINITY #浮動小数点数無限大
    prices.each do |price|
      min_price = [min_price, price].min
      profit = [profit, price - min_price].max
    end
    profit
  end
p max_profit([7,1,5,3,6,4])
p max_profit([7,6,4,3,1])
# ------------------------------------------------------------
# 125. Valid Palindrome

def is_palindrome(s)
    filtered_s = s.gsub(/[^a-bA-Z0-9]/i,'').downcase
    left, right = 0, filtered_s.size - 1
    
    while left < right
      return false if filtered_s[left] != filtered_s[right]
      left += 1
      right -= 1
    end
    
    true
end
p is_palindrome("A man, a plan, a canal: Panama")
p is_palindrome("race a car")
p is_palindrome(" ")