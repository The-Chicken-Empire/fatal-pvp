#> items:generate/helmet/8/generate
#
# アイテム名 : 黒魔導士のレギンス
# 0 0 0のブロックのcontainer.0に生成します
# 
# @within items:*

item replace block 0 0 0 container.0 with dirt

item modify block 0 0 0 container.0 items:generate/leggings/8/item

item modify block 0 0 0 container.0 items:generate/leggings/8/name

item modify block 0 0 0 container.0 items:generate/leggings/8/custom_data

item modify block 0 0 0 container.0 items:generate/leggings/8/cost

item modify block 0 0 0 container.0 items:generate/leggings/8/stats

#abilityがある時はここにコメントを外してファイルをいじる(消して作ったほうが早いかも。その場合は最初の一行を空ける。)
#item modify block 0 0 0 container.0 items:generate/leggings/8/ability

item modify block 0 0 0 container.0 items:generate/leggings/8/parts

#フレーバー無ければコメントをつけるなりなんなり
item modify block 0 0 0 container.0 items:generate/leggings/8/flavor

#アトリビュートなどを追加したい場合はコメントをはずしてファイルを作成する
item modify block 0 0 0 container.0 items:generate/leggings/8/others
