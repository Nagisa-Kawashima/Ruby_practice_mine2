a = [1,2,3,4,5] 
p a[1,3] 

a = [1,2,3,4,5] 
p a.values_at(0,2,4) 

a = [1,2,3] 
p a[a.size - 1]
p a[a.size - 2]
p a[a.size - 3] 

a = [1,2,3] 
p a.last 
p a.last(2) 
p a[-2]
p a[-2, 2]  

a = [1,2,3] 
p a.first 
p a.first(2)

a = [1,2,3]
p a[-3] = -10 
# p a[-4] = -10 
p a  

a = [1,2,3,4,5]
p a[1,3] = 100 
p a  

a = [] 
p a.push(1)
p a.push(2, 3)
p a  


a = [1,2,3,1,2,3] 
p a.delete(2) 
p a 

a = [1]
b = [2,3] 
p a.concat(b) 
p a 
p b 

a = [1]
b = [2,3] 
p a + b
