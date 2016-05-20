# 練習問題

**Chapter 4 の練習問題で作成したbooksテーブルを更新するためのフォームを作成します。入力欄を表示させるメソッドの呼び出しを空欄に記入して下さい。**

```ruby
<%= form_for @book do |form| %>
  <p>書名: <%= form.text_field :title %></p>
  <p>著者: <%= form.text_field :author %></p>
  <p>価格: <%= form.text_field :price %></p>
<% end %>
```

**フォームから送られた値を元にbooksテーブルのレコードを新規作成するcreateメソッドと、レコードを更新するupdateメソッドを作成します。空欄を埋めてメソッドを完成させてください。**

```ruby
class BooksController < ApplicationController
  def crate
    @book = Book.new(params[:book])
    @book.save
    redirect_to @book, notice: "作成しました。"
  end

  def update
    @book = Member.find(params[:id])
    @book.assign_attributes(params[:book])
    @book.save
    redirect_to @book, notice: "更新しました。"
  end
end
```

**booksテーブルのカラム title, author, priceのためにバリデーションを記述してください。どのカラムも値を空にしてはいけないものとします。priceは、1以上の整数とします。

```ruby
class Book < ActiveRecord::Base
  validates :title, :author
  validates :price, presence: true,
   numericality: { only_integer: true, greater_than: 0 }
end
```

**Bookモデルのためのロケールテキストを作成するとします。title, author, priceの日本語名をYAML形式で記述してください。**

```yaml
ja:
  activerecord:
    models:
      book: 書籍
    attributes:
      book:
        title: タイトル
        author: 著者
        price: 価格
```
