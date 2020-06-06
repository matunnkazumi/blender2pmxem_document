---
layout: article
title: PMXモーフまとめ
description: blender2pmxemのモーフ対応
image: /assets/image/misc/shape_key_panel.png
date: 2020-06-06 22:06:57 +0900
last_modified_at: 2020-06-06 23:04:18 +0900
---

## 種類ごとの対応
### 頂点モーフ
![Blender シェイプキーパネル](/assets/image/misc/shape_key_panel.png)

Blenderのシェイプキーを、PMXの頂点モーフに変換します。

基準形状(Basis)以外のシェイプキーが、モーフとして出力されます。

基本的にはシェイプキー名がモーフ名になります。

### 材質モーフ、ボーンモーフ、グループモーフ
Blender側のデータを、これらのモーフとして出力することはできません。PMXエディタで作成してください。

![XML作成ダイアログ](/assets/image/features/UI_manual_object_mode_make_xml_options.png)

XMLに保存できますので、一旦作成すれば、再エクスポートの度に作り直す必要はありません。

### UVモーフ、追加UV1モーフ、追加UV2モーフ、追加UV3モーフ、追加UV4モーフ

現時点では対応していません。

## 注意事項
モーフ名は重複させないようにしてください。

シェイプキーの名前はBlenderの仕様的に重複させられませんが、XMLで管理している材質モーフ・ボーンモーフ・グループモーフの名前は重複させられます。

一応、エクスポート・インポート前にチェックはしていますが、どうしても対応できないケースがあります。

重複している場合、思ったようにエクスポートされない可能性がありますのでお気をつけください。
