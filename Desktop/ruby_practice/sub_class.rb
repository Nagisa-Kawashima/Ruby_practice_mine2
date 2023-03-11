class User  
    def initialize(name)
        @name = name
    end 

    def hello 
        puts "hello, i am #{@name}"
    end
end

class Adminuser < User  
    def admin_hello
        puts "#{@name} from Admin"
    end


    def say 
        hello
    end
    private #クラス内部でのみ使う
        def hello   #オーバーライド
            puts 'admin'
        end
end

user = User.new('kawashima')
user.hello

user1 = Adminuser.new('kawashima1')
# user1.hello エラーになる
user1.say
user1.admin_hello


