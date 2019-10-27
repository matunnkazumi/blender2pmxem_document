---
layout: article
title: 使い方ガイド
date: 2019-10-26 14:44:30 +0900
last_modified_at: 2019-10-27 16:43:53 +0900
---
## ダウンロード
[Release](https://github.com/matunnkazumi/blender2pmxem/releases)ページから「blender2pmxem.zip」をクリックしてダウンロードしてください


## インストール
通常のアドオンと同様です。zipを展開してアドオンフォルダに置いてください。

## アドオン設定
初めて使う場合は「日本語のボーン名を使う」の方がわかりやすいですかね？　お好みに応じてご自由に

![My helpful screenshot](/assets/image/tutorial/pref.png)


## で、モデルを作りましょう。
![My helpful screenshot](/assets/image/tutorial/modeling_start.png)

サイドバー(nキーで表示)に色々な機能があるので、使ってみてください

![My helpful screenshot](/assets/image/tutorial/sidebar.png)

## アーマチュアの雛形
まっさらから作る場合は、「アーマチュアの雛形をアペンド」のアーマチュアを使うと良いでしょう
MMD標準のボーン構成のアーマチュアが追加されます

![My helpful screenshot](/assets/image/tutorial/append_armature.png)
![My helpful screenshot](/assets/image/tutorial/appended_armature.png)

## ポーズ変更機能
「Tポーズへ」「Aポーズへ」「リバインド」でポーズの変更が簡単にできます。

![My helpful screenshot](/assets/image/tutorial/UI_manual_pose_mode.png)
![My helpful screenshot](/assets/image/tutorial/a_stance.png)

## テクスチャ設定
テクスチャは、プリンシプルBSDFのベースカラーに画像テクスチャノードを設定してください。エクスポート時に反映されます

* マテリアルにプリンシプルBSDFノードを設定  
  ![My helpful screenshot](/assets/image/tutorial/PMX_Blender_Material_principled_bsdf.png)
* ベースカラーの「○」アイコンから画像テクスチャノードを選択  
  ![My helpful screenshot](/assets/image/tutorial/PMX_Blender_Material_principled_bsdf_base_color_node.png)
* 「開く」からテクスチャ画像ファイルを指定  
  ![My helpful screenshot](/assets/image/tutorial/PMX_Blender_Material_principled_bsdf_image_file.png)

## だいたい出来上がったらエクスポートしましょう。
![My helpful screenshot](/assets/image/tutorial/export.png)

エクスポートするメッシュにはマテリアルとアーマチュアモディファイアーを設定してください。
これが無いオブジェクトはエクスポートされません

![My helpful screenshot](/assets/image/tutorial/armature_modifier.png)
![My helpful screenshot](/assets/image/tutorial/material.png)

## エクスポート
アーマチュアオブジェクトを選択すると、エクスポートメニューのPMXエクスポートが有効になります。

![My helpful screenshot](/assets/image/tutorial/select_armature.png)

## PMXエディタで材質設定
Blenderのマテリアルの色は反映されないので、PMXエディタで設定してください

![My helpful screenshot](/assets/image/tutorial/pmx_editor_material_color.png)

## PMXエディタで物理演算設定
画像は曲面自動設定プラグイン

![My helpful screenshot](/assets/image/tutorial/kyokumen_plugin.png)

## PMXファイル情報の取り込み
PMXエディタのセットアップした内容は、ある程度なら、Blender側に書き戻すことができます

![ファイル情報の取り込み図解](/assets/image/tutorial/import_export_file_relation.png)

サイドバーの「XMLファイル作成」機能でXMLファイルを作ってください
この中に、材質の色や、剛体・ジョイントの情報が保存されます

![My helpful screenshot](/assets/image/tutorial/make_xml.png)

## XMLを使って再エクスポート
エクスポートするpmxファイルと同じ名前のXMLファイルがあると、保存された内容が復元されます
再セットアップの手間が(ある程度)省けます
※ 材質モーフやUVモーフなど保存できない項目もあります

「XMLファイル作成」のオプションで、「転送」を選択すると、ボーンとウェイトを取り込みます
曲面自動設定プラグインの結果をblendファイル側に書き戻すことができます。

できない場合もあります。

モディファイアーやオブジェクトの構造によっては思ったように取り込めない場合があります
とりあえず、ミラーモディファイア用には、ボーン名を左右対象にしておくとよさそう(闇鍋プラグイン使用)

![My helpful screenshot](/assets/image/tutorial/yaminabe_plugin.PNG)
