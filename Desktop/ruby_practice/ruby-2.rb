class Car  
    RIGION = 'USA'
    @@count = 0 #kurasuhennsuu クラス自体に値を保持する事が出来る変数　

    def initialize(name)
        @name = name
        @@count += 1
    end   

    def hello  
        puts "hello i am #{@name} #{@@count}"
    end

    def self.info  #クラスメソッド　クラスから直接呼ぶことが出来るメソッド
        puts "#{@@count} Rigion: #{RIGION}" #定数はどこでも使える
    end
end


kitt = Car.new('kawashi')
Car.info

# kitt.hello
hoge = Car.new('hoge')
Car.info

Car::RIGION #定数はクラスの外からでも参照することが出来る

# hoge.hello

# Car.info

