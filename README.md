# rack test app

```sh
sh run.sh
```

## memo

- rack
  - >Rackは、指定したファイルを独自のRuby DSLとして読み込み、DSLで指定した様々なミドルウェア、アプリケーションを組み合わせてWebサーバを立ち上げることができるrackupというコマンドを提供するライブラリ
    - https://qiita.com/k0kubun/items/248395f68164b52aec4a
  - rackによるsinatraアプリの起動
    - 直接rubyで読み込むのはNG
    - ruckupで起動する
