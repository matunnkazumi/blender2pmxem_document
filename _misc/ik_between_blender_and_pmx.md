---
layout: default
title: IKの変換
date: 2019-10-26 14:31:15 +0900
---
# エクスポート処理でのIKの変換

![IKコンストレイントのパラメータの変換](/assets/image/misc/ik_conversion_constraints.png)
![Linkの変換](/assets/image/misc/ik_conversion_links.png)

## 変換の方法

* IKコンストレイントのあるボーンが対象
* IKコンストレイントのターゲットボーンに、PMXのIKフラグが設定される
* IKコンストレイントのあるボーンの表示先のボーンが、PMXのIKのTargetになる
  * 表示先ボーンが無い場合は、エクスポーターで追加する
* IKコンストレイントのターゲットボーンのカスタムプロパティで以下のパラメータを設定
  * カスタムプロパティ：IKLoops → PMX：Loop
    * 存在しない場合は10
  * カスタムプロパティ：IKLimit → PMX：単位角
    * 単位はラジアン
      * PMXエディタの表示上は度 PMXの内部データ形式ではラジアン
    * 存在しない場合は2.0
* IKコンストレイントのあるボーンを含めて、祖先方向のボーンが、PMXのIKのLinkになる
  * IKコンストレイントのチェーンの数
* 各ボーンのインバースキネマティクスのロック・軸制限・角度制限が、PMXのIKのLinkの各ボーンの角度制限になる
