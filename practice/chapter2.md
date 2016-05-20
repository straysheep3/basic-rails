# 練習問題

**次の空欄を埋め、入力した数値に消費税を加えた値を表示してください。小数点以下を切り落とすには、数値オブジェクトのto_iメソッドを使います。なお、消費税率は8%とします。**

```ruby
print = "価格を入力してください"
price = gets.chomp
price = ◯◯
puts "税込み#{price}円です。"
```

```ruby
price = (price * 1.08).to_i
```

**配列flowersの要素を１つずつ表示するプログラムを書いて下さい**

```ruby
flowers = ["carnation", "tulip", "cosmos"]
flowers.each do |flower|
  puts flower
end
```

**空欄を埋めて、属性を取り出すアクセサメソッドをBookクラスに加えてください。**

```ruby
class Book
  attr_accessor :title, :author, :price
  def initialize(title, author, price)
    @title = title
    @author = author
    @price = price
  end
end

book1 = Book.new("彼岸過迄", "夏目漱石", 540)
puts "#{book1.title}", "#{book1.author}", "#{book1.price}円"
```
