# 篠田

篠田は、法人番号のチェックデジットを計算します。チェックデジットの計算方法は、国税庁の資料を参考にしています。

https://www.houjin-bangou.nta.go.jp/documents/checkdigit.pdf

## インストール方法

シェル上で、次のコマンドを実行します。

```console
gem install shinoda
```

## 使い方

```ruby
require 'shinoda

Shinoda.check_digit('700110005901') # => 8
```
