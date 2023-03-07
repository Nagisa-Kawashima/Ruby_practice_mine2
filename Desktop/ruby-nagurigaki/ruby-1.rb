

text = <<-TEXT
名前：伊藤淳一
電話：03-1234-5678
住所：兵庫県西脇市板波町1-2-3
TEXT
puts text.scan /\d\d-\d\d\d\d-\d\d\d\d/
# => ["03-1234-5678"]

# \d{2,5}-\d{1,4}-\d{4}

# \d{2,5}[-(]\d{1,4}[-)]\d{4}
# 半角数字が2個～5個、ハイフンまたはカッコ（開き）、半角数字が1個～4個、ハイフンまたはカッコ（閉じ）、半角数字が4個


# [a-z] と書くと、「aまたはbまたはcまたは・・・yまたはz」の意味
# [a-zA-Z0-9] であれば「aまたはbまたは・・・z、AまたはBまたは・・・Z、0または1または・・・9」の意味


# 0[1-9]\d{0,3}[-(]\d{1,4}[-)]\d{4}

# にすれば、少し精度が上がります。


text = <<-TEXT
クープバゲットのパンは美味しかった。
今日はクープ バゲットさんに行きました。
クープ　バゲットのパンは最高。
ジャムおじさんのパン、ジャムが入ってた。
また行きたいです。クープ・バゲット。
クープ・バケットのパン、売り切れだった（><）
TEXT

p text.split(/\n/).grep(/クープ.?バ[ゲケ]ット/)
# => ["クープバゲットのパンは美味しかった。", "今日はクープ バゲットさんに行きました。", "クープ　バゲットのパンは最高。", "また行きたいです。クープ・バゲット。", "クープ・バケットのパン、売り切れだった（><）"]


html = <<-HTML
<select name="game_console">
<option value="none"></option>
<option value="wii_u" selected>Wii U</option>
<option value="ps4">プレステ4</option>
<option value="gb">ゲームボーイ</option>
</select>
HTML

replaced = html.gsub(/<option value="(\w+)"(?: selected)?>(.*)<\/option>/, '\1,\2')
# $1,$2 はマッチした文字列を value,表示テキスト の文字列に置換

puts replaced
# <select name="game_console">
# none,
# wii_u,Wii U
# ps4,プレステ4
# gb,ゲームボーイ
# </select>



text = <<-TEXT
def hello(name)
  puts "Hello, \#{name}!"
end

hello('Alice')
     
hello('Bob')
	
hello('Carol')
TEXT

puts text.gsub(/^[ \t]+$/, '')
# スペースまたタブ文字が行末まで1文字以上続く
# def hello(name)
#   puts "Hello, #{name}!"
# end
# 
# hello('Alice')
# 
# hello('Bob')
# 
# hello('Carol')


{
  japan:	'yen',
  america:'dollar',
  italy:     'euro'
}