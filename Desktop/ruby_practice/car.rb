class Car 
    attr_accessor :name #アクセサメソッド
    # attr_reader :name #アクセサメソッド 読み取り用
    attr_writer :name #アクセサメソッド 書き込み用
    def initialize(name)
      @name = name
    end

    def hello  
        puts "hello #{@name}"
    end 


    # def name  #インスタンス変数にアクセスしたい
    #     @name 
    # end

    # def name=(value)   #インスタンス変数の値を編集したい場合　詰めること
    #     @name = value
    # end
end 

car = Car.new("hoge")
car2 = Car.new("kawashi")
car.hello
car2.hello
puts car.name

car.name = 'hogehoge'
puts car.name



