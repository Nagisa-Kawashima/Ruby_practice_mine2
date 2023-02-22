puts "hello"
puts 'hello'

p %Q(he"llo)   #ダブルクォーテーションで囲ったものと同じ
p %(hel'lo)   #ダブルクォーテーションで囲ったものと同じ 

p %q(hel"lo) 


p %w(red blue) #["red", "blue"]
p %W(red blue) #["red", "blue"]

p sprintf("name: %10s\n", "taguchi")
p sprintf("id: %05d, rate: %10.2f\n", 355, 3.284)

# 文字列だったら %s、整数だったら %d、浮動小数点数だったら %f を使います。
 
p "name: %s" % "taguchi"
# 書式付きで文字列に値を埋め込む、% を使って「"文字列" % 値」のように表現できる　
p "name: %10s" % "taguchi"
p "name: %-10s" % "taguchi"


# class User

  #   def initialize(name) #new が呼ばれたときに呼ばれる、特殊な initialize というメソッド
  #     @name = name  #インスタンス変数はクラスの中で使える
  #   end
  
  #   def sayHi
  #     puts "hi! i am #{@name}"
  #   end
  
  # end
  
  # tom = User.new("tom")
  # tom.sayHi
  
  # bob = User.new("bob")
  # bob.sayHi 


  # class User

  #   attr_accessor :name
  #   # attr_reader :name
  #   # setter: name=(value)
  #   # getter: name
  
  #   def initialize(name)
  #     @name = name
  #   end
  
  #   def sayHi
  #     # self
  #     # self.name -> @name
  #     puts "hi! i am #{@name}"
  #     puts "hi! i am #{self.name}"
  #     puts "hi! i am #{name}"
  #   end
  
  # end
  
  # tom = User.new("tom")
  
  # tom.name = "tom Jr."
  # p tom.name
  
  # tom.sayHi # レシーバー 


  # クラス
# - クラスメソッド
# - クラス変数
# - 定数

# class User

#     @@count = 0
  
#     VERSION = 1.1 #定数
  
#     def initialize(name)
#       @@count += 1  #クラス変数
#       @name = name
#     end
  
#     def sayHi
#       puts "hi! i am #{@name}"
#     end
  
#     def self.info #クラスメソッド
#       puts "#{VERSION}: User Class, #{@@count} instances."
#     end
  
#   end
  
  # tom = User.new("tom")
  # bob = User.new("bob")
  # steve = User.new("steve")
  # User.info
  # p User::VERSION



  # クラスの継承

# class User

#     def initialize(name)
#       @name = name
#     end
  
#     def sayHi
#       puts "hi! i am #{@name}"
#     end
  
#   end
  
  # User: 親クラス、Super Class
  # AdminUser: 子クラス、Sub Class
  
  # class AdminUser < User
  
  #   def sayHello
  #     puts "Hello from #{@name}"
  #   end
  
  #   # オーバーライド
  #   def sayHi
  #     puts "hi! from admin!"
  #   end
  
  # end
  
  # tom = AdminUser.new("tom")
  # tom.sayHi
  # tom.sayHello



#   例外があって、new したときに呼ばれる initialize メソッドと、クラスの外に書いたメソッドは自動的に private になるので、覚えておきましょう。

# Ruby の private 指定は他の言語のオブジェクト指向プログラミングと動作が異なっていて、Sub Class から呼び出せたり、オーバーライドすることができたりするので、十分注意して使うようにしましょう。　


# アクセス権
# - public
# - protected
# - private: レシーバーを指定できない

class User

  def sayHi
    puts "hi!"
    sayPrivate
    # self.sayPrivate
  end

  private

    def sayPrivate
      puts "private"
    end

end

class AdminUser < User

  # def sayHello
  #   puts "hello!"
  #   sayPrivate
  # end

  def sayPrivate
    puts "private from Admin"
  end

end

# User.new.sayPrivate #NG
# User.new.sayHi

# AdminUser.new.sayHello
AdminUser.new.sayPrivate 


# module
# - 自分だけの名前空間　　 
# 関連するメソッドや定数などをざっとまとめてグループ化したいだけのときに使う

def movie_encode
end

def movie_export
end

module Movie

  VERSION = 1.1

  def self.encode
    puts "encoding..."
  end

  def self.export
    puts "exporting..."
  end

end

Movie.encode
Movie.export
p Movie::VERSION


# module
# - ミックスイン

module Debug  #継承関係にない複数のクラスに共通の機能を提供する場合

  def info
    puts "#{self.class} debug info ..."
  end

end

class Player
  include Debug
end

class Monster
  include Debug
end

Player.new.info
Monster.new.info

# 例外

class MyError < StandardError; end

x = gets.to_i

#begin と end で囲ってあげて、例外が発生した場合の処理を rescue の後に書いていってあげます。
begin
  if x == 3
    raise MyError
  end
  p 100 / x
rescue MyError
  puts "not 3!"
rescue => ex
  p ex.message
  p ex.class
  puts "stopped!"
ensure #例外が発生しようがしまいが、最後に絶対実行したい処理は ensure
  puts "-- END --"
end