---
layout: article
title: Blender 2.79以前 + Blender2Pmxe からの移行ガイド
date: 2019-10-25 00:05:01 +0900
last_modified_at: 2019-10-27 00:39:17 +0900
---
Blender 2.79以前 + Blender2Pmxe でMMDモデルを作っていた場合の、blendファイルとXMLファイルの移行手順のガイドラインです

あくまで、ドキュメント製作者の運用方法を元にした手順ですので、皆様の使い方に合わせて適宜アレンジしてください

バックアップはお忘れなく

## Blender 2.79以前での作業その１：輪郭線の削除
輪郭線機能は削除しました。この機能を使っていた方は、移行前に予め削除してください。

![Blender2Pmxeのオブジェクトモードパネル](/assets/image/migration/object_mode_panel_279.png)

## Blender 2.79以前での作業その２：エクスポート
XMLファイルを利用していた方は、移行後に改めて作り直す必要があります。

移行前に予め、エクスポートしてPMXファイルを作っておいてください。材質色やボーンの並び順など、必要なセットアップは済ませておきましょう。

![Blender 2.79でエクスポート](/assets/image/migration/export_from_279.png)

## Blender 2.80での作業その１：Blender 2.80で開く
blendファイルをBlender 2.80で開きます

![Blender 2.80で開く](/assets/image/migration/open_by_280.png)

## Blender 2.80での作業その２：マテリアル再設定 テクスチャ
エクスポーターに合わせてマテリアルを再設定します。最低限、テクスチャファイルだけ以下のように指定してください。

* マテリアルにプリンシプルBSDFノードを設定  
  ![プリンシプルBSDFノード](/assets/image/tutorial/PMX_Blender_Material_principled_bsdf.png)
* ベースカラーの「○」アイコンから画像テクスチャノードを選択  
  ![画像テクスチャノード](/assets/image/tutorial/PMX_Blender_Material_principled_bsdf_base_color_node.png)
* 「開く」からテクスチャ画像ファイルを指定  
  ![画像ファイル](/assets/image/tutorial/PMX_Blender_Material_principled_bsdf_image_file.png)

## Blender 2.80での作業その３：XMLファイル再作成
「Blender 2.79以前での作業その２：エクスポート」で作成しておいたPMXファイルを使って、XMLファイルを作成してください。

XMLファイルに手を入れて使っていた方は、再作成したファイルをもとに改めて修正し直すことを推奨します。

![XML作成](/assets/image/migration/make_xml.png)

## Blender 2.80での作業その４：エクスポート
それでは移行したblendファイルとXMLファイルを使って、エクスポートしてみましょう。

![Blender 2.80でエクスポート](/assets/image/migration/export_from_280.png)
