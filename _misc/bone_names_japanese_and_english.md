---
layout: default
title: ボーンの和名と英名の対応関係
date: 2019-10-26 14:31:15 +0900
last_modified_at: 2019-10-26 16:32:23 +0900
---
# ボーンの和名と英名の対応関係

## インポート処理
プリファレンスの「日本語のボーン名を使う」が有効の場合、PMXのボーン名をBlender上のボーン名に設定します。無効の場合はPMXのボーン名英をBlender上のボーン名に設定します。

また、ボーンの先頭の`左`と`右`は末尾の`_L`と`_R`に変換します。

## エクスポート処理
XMLファイルから取得した値がそれぞれPMXのボーン名・ボーン名英に設定されます。XMLファイルにボーンの情報がない場合は、Blender上のボーン名がそのままPMXファイルのボーン名とボーン名英の両方に設定されます。

XMLファイルが存在しない場合は、アドオン側にあるデフォルトのXMLの情報を使用します。

また、ボーン名の末尾の`_L`と`_R`は先頭の`左`と`右`に変換します。ボーン名英は変換しません。

## デフォルトの対応表

|英名|和名|
---|---
|master|全ての親|
|center|センター|
|upper body|上半身|
|upper body2|上半身2|
|neck|首|
|head|頭|
|eye_L|目_L|
|eye_R|目_R|
|lower body|下半身|
|shoulder_L|肩_L|
|arm_L|腕_L|
|elbow_L|ひじ_L|
|wrist_L|手首_L|
|thumb0_L|親指０_L|
|thumb1_L|親指１_L|
|thumb2_L|親指２_L|
|fore1_L|人指１_L|
|fore2_L|人指２_L|
|fore3_L|人指３_L|
|middle1_L|中指１_L|
|middle2_L|中指２_L|
|middle3_L|中指３_L|
|third1_L|薬指１_L|
|third2_L|薬指２_L|
|third3_L|薬指３_L|
|little1_L|小指１_L|
|little2_L|小指２_L|
|little3_L|小指３_L|
|shoulder_R|肩_R|
|arm_R|腕_R|
|elbow_R|ひじ_R|
|wrist_R|手首_R|
|thumb0_R|親指０_R|
|thumb1_R|親指１_R|
|thumb2_R|親指２_R|
|fore1_R|人指１_R|
|fore2_R|人指２_R|
|fore3_R|人指３_R|
|middle1_R|中指１_R|
|middle2_R|中指２_R|
|middle3_R|中指３_R|
|third1_R|薬指１_R|
|third2_R|薬指２_R|
|third3_R|薬指３_R|
|little1_R|小指１_R|
|little2_R|小指２_R|
|little3_R|小指３_R|
|leg_L|足_L|
|knee_L|ひざ_L|
|ankle_L|足首_L|
|leg_R|足_R|
|knee_R|ひざ_R|
|ankle_R|足首_R|
|eyes|両目|
|leg IK_L|足ＩＫ_L|
|leg IK_R|足ＩＫ_R|
|toe IK_L|つま先ＩＫ_L|
|toe IK_R|つま先ＩＫ_R|
