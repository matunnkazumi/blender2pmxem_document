---
layout: article
title: XMLの項目
description: XMLの要素と属性の一覧
image: /assets/image/misc/xml_sample_image.png
date: 2019-10-26 14:31:15 +0900
last_modified_at: 2020-06-06 22:02:42 +0900
---
## pmxstatus
### pmdinfo
#### name
モデル名
#### name_e
モデル名英
#### comment
コメント
#### comment_e
コメント英
### morphs
#### morph
モーフ

|属性名|意味|
---|---
|b_name|モーフ名 頂点モーフの場合はBlender上のシェイプキー名|
|group|操作パネル 1:眉 2:目 3:口 4:その他 |
|name|モーフ名|
|name_e|モーフ名英|
|type|モーフ種類 0:グループ 1:頂点 2:ボーン 8:材質|

##### group_offsets
###### group_offset
グループモーフ

|属性名|意味|
---|---
|morph_name|モーフ名 morph要素b_name属性の値を指定する|
|power|影響度|

##### bone_offfsets
###### bone_offset
ボーンモーフ

|属性名|意味|
---|---
|bone_name|ボーン名 Blender上の名前|

bone_move
: ボーンモーフ 移動量

|属性名|意味|
---|---
|x|X軸移動量|
|y|Y軸移動量|
|z|Y軸移動量|

bone_rotate
: ボーンモーフ 回転量

|属性名|意味|
---|---
|x|X軸回転量 オイラー角|
|y|Y軸回転量 オイラー角|
|z|Y軸回転量 オイラー角|

##### material_offsets
###### material_offset
材質モーフ

|属性名|意味|
---|---
|edge_size|エッジサイズ|
|effect_type|オフセット演算形式 0:乗算 1:加算|
|material_name|材質名 Blender上の名前|
|power|反射強度|

mat_diffuse
: 材質モーフ 拡散色

|属性名|意味|
---|---
|a|アルファ値 0〜1|
|r|赤 0〜1|
|g|緑 0〜1|
|b|青 0〜1|

mat_speculer
: 材質モーフ 反射色

|属性名|意味|
---|---
|r|赤 0〜1|
|g|緑 0〜1|
|b|青 0〜1|

mat_ambient
: 材質モーフ 環境色

|属性名|意味|
---|---
|r|赤 0〜1|
|g|緑 0〜1|
|b|青 0〜1|

mat_edge_color
: 材質モーフ エッジ色

|属性名|意味|
---|---
|a|アルファ値 0〜1|
|r|赤 0〜1|
|g|緑 0〜1|
|b|青 0〜1|

mat_texture
: 材質モーフ Tex

|属性名|意味|
---|---
|a|アルファ値 0〜1|
|r|赤 0〜1|
|g|緑 0〜1|
|b|青 0〜1|

mat_sphere
: 材質モーフ スフィア

|属性名|意味|
---|---
|a|アルファ値 0〜1|
|r|赤 0〜1|
|g|緑 0〜1|
|b|青 0〜1|

mat_toon
: 材質モーフ Toon

|属性名|意味|
---|---
|a|アルファ値 0〜1|
|r|赤 0〜1|
|g|緑 0〜1|
|b|青 0〜1|

### bones
#### bone
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

##### local_x
ローカル軸 X軸の方向ベクトル

|属性名|意味|
---|---
|x||
|y||
|z||

##### local_z
ローカル軸 Z軸の方向ベクトル

|属性名|意味|
---|---
|x||
|y||
|z||

### labels
#### label
表示枠

|属性名|意味|
---|---
|name|枠名|
|name_e|枠名英|
|type|特殊枠フラグ 0:通常枠 1:特殊枠|

##### tab
要素対象

|属性名|意味|
---|---
|name|要素対象のPMX上の名前|
|type|要素対象 0:ボーン 1:モーフ|

### materials
#### material
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
|memo|メモ|

##### edge_color
エッジ色

|属性名|意味|
---|---
|a|アルファ値 0〜1|
|r|赤 0〜1|
|g|緑 0〜1|
|b|青 0〜1|

##### deffuse
拡散色

|属性名|意味|
---|---
|a|アルファ値 0〜1, PMXEditor上の非透過度|
|r|赤 0〜1|
|g|緑 0〜1|
|b|青 0〜1|

##### specular
反射色

|属性名|意味|
---|---
|r|赤 0〜1|
|g|緑 0〜1|
|b|青 0〜1|

##### ambient
環境色

|属性名|意味|
---|---
|r|赤 0〜1|
|g|緑 0〜1|
|b|青 0〜1|

##### sphere
スフィア設定

|属性名|意味|
---|---
|path|スフィアマップ画像へのファイルパス|
|type|0:無効 1:乗算スフィア 2:加算スフィア 3:サブTex|

### rigid_bodies

#### rigid
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

##### size
剛体サイズ

|属性名|意味|
---|---
|a|幅|
|b|高さ|
|c|奥行|

##### pos
剛体位置

|属性名|意味|
---|---
|x||
|y||
|z||

##### rot
剛体回転

|属性名|意味|
---|---
|x||
|y||
|z||

### constraints

#### constraint
ジョイント

|属性名|意味|
---|---
|body_A|接続剛体Aの剛体名|
|body_B|接続剛体Bの剛体名|
|name|ジョイント名|
|name_e|ジョイント名英|

##### pos
ジョイント位置

|属性名|意味|
---|---
|x||
|y||
|z||

##### rot
ジョイント回転

|属性名|意味|
---|---
|x||
|y||
|z||

##### pos_limit
移動制限
###### from
下限

|属性名|意味|
---|---
|x||
|y||
|z||

###### to
上限

|属性名|意味|
---|---
|x||
|y||
|z||

##### rot_limit
回転制限
###### from
下限

|属性名|意味|
---|---
|x||
|y||
|z||

###### to
上限

|属性名|意味|
---|---
|x||
|y||
|z||

##### pos_spring
バネ移動

|属性名|意味|
---|---
|x||
|y||
|z||

##### rot_spring
バネ回転

|属性名|意味|
---|---
|x||
|y||
|z||
