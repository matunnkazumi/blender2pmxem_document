---
layout: default
title: XMLの項目
date: 2019-10-26 14:31:15 +0900
last_modified_at: 2019-10-26 16:32:23 +0900
---
# pmxstatus
## pmdinfo
### name
モデル名
### name_e
モデル名英
### comment
コメント
### comment_e
コメント英
## morphs
### morph
モーフ

|属性名|意味|
---|---
|b_name|Blender上のシェイプキー名|
|group|操作パネル 1:眉 2:目 3:口 4:その他 |
|name|モーフ名|
|name_e|モーフ名英|

## bones
### bone
ボーン

|属性名|意味|
---|---
|b_name|Blender上のボーン名|
|add_move|移動付与|
|add_rot|回転付与|
|after_physical|物理後変形|
|fixed_axis|軸固定|
|ik|IK|
|level|変形階層|
|local_axis|ローカル軸|
|movable|移動可能|
|name|ボーン名|
|name_e|ボーン名英|
|operational|操作可|
|power|付与率|
|rotatable|回転可能|
|visible|表示|

#### local_x
ローカル軸 X軸の方向ベクトル

|属性名|意味|
---|---
|x||
|y||
|z||

#### local_z
ローカル軸 Z軸の方向ベクトル

|属性名|意味|
---|---
|x||
|y||
|z||

## labels
### label
表示枠

|属性名|意味|
---|---
|name|枠名|
|name_e|枠名英|
|type|特殊枠フラグ 0:通常枠 1:特殊枠|

#### tab
要素対象

|属性名|意味|
---|---
|name|要素対象のPMX上の名前|
|type|要素対象 0:ボーン 1:モーフ|

## materials
### material
材質

|属性名|意味|
---|---
|b_name|blender上のMaterial名|
|both|両面描画|
|drop_shadow|セルフ影マップ|
|edge_size|エッジ(輪郭)サイズ|
|ground_shadow|地面影|
|name|材質名(日)|
|name_e|材質名(英)|
|on_edge|エッジ|
|on_shadow|セルフ影|
|toon|トゥーン|
|use_systemtoon|ユーザー設定トゥーン|
|power|反射強度|

#### edge_color
エッジ色

|属性名|意味|
---|---
|a|アルファ値 0〜1|
|r|赤 0〜1|
|g|緑 0〜1|
|b|青 0〜1|

#### deffuse
拡散色

|属性名|意味|
---|---
|a|アルファ値 0〜1, PMXEditor上の非透過度|
|r|赤 0〜1|
|g|緑 0〜1|
|b|青 0〜1|

#### specular
反射色

|属性名|意味|
---|---
|r|赤 0〜1|
|g|緑 0〜1|
|b|青 0〜1|

#### ambient
環境色

|属性名|意味|
---|---
|r|赤 0〜1|
|g|緑 0〜1|
|b|青 0〜1|

#### sphere
スフィア設定

|属性名|意味|
---|---
|path|スフィアマップ画像へのファイルパス|
|type|0:無効 1:乗算スフィア 2:加算スフィア 3:サブTex|

## rigid_bodies

### rigid
剛体

|属性名|意味|
---|---
|attach|関連ボーンのPMX上ボーン名 関連なしの場合は`World`|
|friction|摩擦力|
|group|グループ|
|groups|非衝突グループ フラグを10進数に変換したもの|
|mass|質量|
|name|剛体名|
|name_e|剛体名英|
|pos_dump|移動減衰|
|restitution|反発力|
|rot_dump|回転減衰|
|shape|形状 0:球 1:箱 2:カプセル|
|type|タイプ 0:ボーン追従 1:物理演算 2:物理演算 + Bone位置合わせ|

#### size
剛体サイズ

|属性名|意味|
---|---
|a||
|b||
|c||

#### pos
剛体位置

|属性名|意味|
---|---
|x||
|y||
|z||

#### rot
剛体回転

|属性名|意味|
---|---
|x||
|y||
|z||

## constraints

### constraint
ジョイント

|属性名|意味|
---|---
|body_A|接続剛体Aのインデックス|
|body_B|接続剛体Bのインデックス|
|name|ジョイント名|
|name_e|ジョイント名英|

#### pos
ジョイント位置

|属性名|意味|
---|---
|x||
|y||
|z||

#### rot
ジョイント回転

|属性名|意味|
---|---
|x||
|y||
|z||

#### pos_limit
移動制限
##### from
下限

|属性名|意味|
---|---
|x||
|y||
|z||

##### to
上限

|属性名|意味|
---|---
|x||
|y||
|z||

#### rot_limit
回転制限
##### from
下限

|属性名|意味|
---|---
|x||
|y||
|z||

##### to
上限

|属性名|意味|
---|---
|x||
|y||
|z||

#### pos_spring
バネ移動

|属性名|意味|
---|---
|x||
|y||
|z||

#### rot_spring
バネ回転

|属性名|意味|
---|---
|x||
|y||
|z||
