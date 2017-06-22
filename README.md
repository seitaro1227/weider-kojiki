# ウィダー乞食
[フレフレ、部活。母校にinゼリー](http://www.weider-jp.com/know/bukatsu/)
のサイトで投票を自動化するサンプルコードです。
[Capybara](https://github.com/teamcapybara/capybara)の練習として作ってみました。
動作は保証しません。

## 動作環境
以下の環境で動作確認しました。
- macOS 10.12.4（16E195）
- ruby 2.4.1

## 必要なツール
- chromedriver

`brew`から必要なツールをインストールします。
```bash
brew install chromedriver
```

## 実行方法
```bash
git clone https://github.com/seitaro1227/wider-kojiki
cd wider-kojiki
bundle install --path vendor/bundle
# run.rbを修正する
bundle exec ruby run.rb
```

## 投票する部活を選択する
`rub.rb`を修正します。

### 例示
部活の投票ページを開きます。

http://www.weider-jp.com/know/bukatsu/club?param=treppWg3pbl1Vo9qlqwGPbc03pM5rWKL

`param=`以降の文字列をクリップボードにコピーします。
```
treppWg3pbl1Vo9qlqwGPbc03pM5rWKL
```
`rub.rb`のclubの変数を修正します。
```ruby
club = {p: 'ここに貼り付けるンマ'}
```

## 投票する回数を設定する
`rub.rb`の`2.times`を`3.times`の様に修正します。
