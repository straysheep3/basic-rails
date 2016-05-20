# 練習問題

## 次の内容が正しい場合は◯、間違っている場合は×を記入して下さい。

- [x] Ruby on Railsは、オープンソース方式で開発されているフレームワークです。
- [ ] Ruby on Railsでは、Ruby以外にもさまざまなプログラミング言語が利用できます。
- [x] Ruby on Railsは、Windows, Mac OS X, LinuxなどさまざまなOSで動作します。
- [x] Railsをインストールするには、パッケージ・マネージャのRubyGemsを使います。
- [ ] Railsのソースコードは、Shift JISで記述するのが基本です。

## 次の空欄を埋めて下さい。

- Railsの原則DRYは、「Don't Repeat Yourself」の略で◯◯という意味です。
- Railsは◯◯という設計哲学で作られており、規約に従ってアプリケーション開発することで、記述量を大幅に減らすことができます。

- 繰り返しをさけよ
- 設定より規約

## 次の空欄を埋めて、変数@descriptionの値を表示させてください。

```ruby
def index
  @message = "こんにちは"
  @description = "これからRailsアプリケーションを作ります。"
end
```

```ruby
<h1><%= @message %></h1>
<p>◯◯</p>
```

```ruby
<p><%= @description %></p>
```
