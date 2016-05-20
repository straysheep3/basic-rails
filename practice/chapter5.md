# 練習問題

**Chapter 4 の練習問題で作ったBookモデルを扱う BooksControllerを作ることにします。routes.rbで「resouces :books」と指定すると、BooksControllerの各アクションとURLのパス、HTTPメソッドはどのような関係になるでしょうか。空欄を埋めて下さい。idパラメータには1が入ることにします。**

アクション、URLのパスとHTTPメソッドの対応

| アクション | パス          | HTTPメソッド |
|:-----------|:--------------|:-------------|
| index      | /books        | GET          |
| show       | /books/1      | GET          |
| new        | /books/new    | GET          |
| edit       | /books/1/edit | GET          |
| create     | /books        | POST         |
| update     | /books/1      | PATCH        |
| destroy    | /books/1      | DELETE       |

**問題AのBooksControllerを記述します。indexアクションにはレコード一覧を書籍名(title)順に取り出すコードを記述してください。showアクションにはidパラメータを元にレコードを１つ取り出すコードを記述して下さい。**

```ruby
class BooksController < ApplicationController
  def index
    @books = Book.order("title")
  end

  def show
    @books = book.find(params[:id])
  end
end
```

**問題Bのindexアクションとshowアクション用のテンプレートを記述します。空欄を埋めて、index.html.erbではループの中にshowアクションへのリンクを作成してください。show.html.erbでは変数@bookが持っている書籍名(title)、著者名(author)、価格(price)を表示してください。**

```ruby
<ul>
  <% books.each do |book| %>
  <li><%= link_to book.title, book %></li>
  <% end %>
</ul>
```

```ruby
<p>書籍名: <%= @books.title %>、
著者名: <%= @books.author %>、
価格: <%= @books.price %>円
</p>
```
