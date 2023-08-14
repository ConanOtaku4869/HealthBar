# Health Bar

マルチプレイ対応の体力ゲージを表示するデータパック

## 対応バージョン

1.20.2 ~

## 使用方法

自分から一定範囲内(デフォルトでプレイヤーから20ブロック以内)の一番近いモブ(プレイヤー含む)の体力のゲージが画面上部に自動で表示されます。

範囲は以下のコマンドで変更することができます

```nim
/scoreboard players set @s health_bar.distance <範囲(整数値)>
```