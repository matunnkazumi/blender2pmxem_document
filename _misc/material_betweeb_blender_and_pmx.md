---
layout: default
title: PMX形式の材質とBlenderのマテリアルとの対応関係
date: 2019-10-26 14:31:15 +0900
last_modified_at: 2019-10-26 16:32:23 +0900
---
基本的には、PMX形式の材質の設定・確認はPMXエディタとMikuMikuDanceで行ってください。

材質色の設定はXMLに保存されます。

# テクスチャ
テクスチャ画像に関しては、UVの編集等の必要もありますので、Blender上の設定値を取得します。

以下のように設定してください。

* マテリアルにプリンシプルBSDFノードを設定  
  ![プリンシプルBSDFノード](/assets/image/misc/Blender_Material_principled_bsdf.png)
* ベースカラーの「○」アイコンから画像テクスチャノードを選択  
  ![ベースカラーに画像テクスチャを設定](/assets/image/misc/Blender_Material_principled_bsdf_base_color_node.png)
* 「開く」からテクスチャ画像ファイルを指定  
  ![画像ファイルを設定する前](/assets/image/misc/Blender_Material_principled_bsdf_image_file.png)

上記のテクスチャ画像が、PMXの材質のテクスチャ設定に反映されます
