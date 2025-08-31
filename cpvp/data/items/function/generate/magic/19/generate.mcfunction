#> items:generate/magic/19/generate
#
# アイテム名 : 水晶の盾
# 0 0 0のブロックのcontainer.0に生成します
# 
# @within items:*

item replace block 0 0 0 container.0 with dirt

item modify block 0 0 0 container.0 items:generate/magic/19/item

item modify block 0 0 0 container.0 items:generate/magic/19/name

item modify block 0 0 0 container.0 items:generate/magic/19/custom_data

#item modify block 0 0 0 container.0 items:generate/magic/19/cost

item modify block 0 0 0 container.0 items:generate/magic/19/stats

#abilityがある時はここにコメントを外してファイルをいじる(消して作ったほうが早いかも。その場合は最初の一行を空ける。)
item modify block 0 0 0 container.0 items:generate/magic/19/ability

item modify block 0 0 0 container.0 items:generate/magic/19/parts

item modify block 0 0 0 container.0 items:generate/magic/19/flavor

#アトリビュートなどを追加したい場合はコメントをはずしてファイルを作成する
#item modify block 0 0 0 container.0 items:generate/magic/19/others
