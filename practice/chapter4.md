# 練習問題

**データベースに書籍を管理するbooksテーブルを作成することにします。マイグレーションスクリプトにカラムの定義を記述してください。title(書籍名),author(著者名), price(価格)の3つのカラムを用意し、カラムの型はそれぞれ文字列、文字列、整数とします。**

```ruby
class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :price
  end
end
```

**Bookモデルを使って、問題Aのbooksテーブルに書籍のデータｗ保存するためのコードを書きます。2つの空欄に書籍名を設定するコードと、データを保存するコードを書いて下さい。書籍名は好きなものでかまいません。**

```ruby
book = Book.new
book.title = "彼岸過迄"
book.author = "夏目漱石"
book.price = 1200
book.save
```

**Bookモデルを使って、booksテーブルからidが123の書籍をモデルオブジェクトに取り出すコードを書いて下さい。**

```ruby
book = book.find(123)
```

**booksテーブルから著者が「夏目漱石」の書籍を取り出します。Bookモデルとクエリーメソッドを使ってリレーションオブジェクトを作って下さい。**

```ruby
books = book.where(author: "夏目漱石")
```


**booksテーブルから価格が3000円未満の書籍を取り出します。Bookモデルとクエリーメソッドを使ってリレーションオブジェクトを作って下さい**

```ruby
books = book.where("price < ?", 3000)
```
