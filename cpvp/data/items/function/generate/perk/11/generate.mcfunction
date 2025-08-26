#> items:generate/perk/11/generate
#
# アイテム名 : 水晶の軌跡
# 0 0 0のブロックのcontainer.0に生成します
# 
# @within items:*

item replace block 0 0 0 container.0 with dirt

item modify block 0 0 0 container.0 items:generate/perk/11/item

item modify block 0 0 0 container.0 items:generate/perk/11/name

item modify block 0 0 0 container.0 items:generate/perk/11/custom_data

#item modify block 0 0 0 container.0 items:generate/perk/11/cost

#item modify block 0 0 0 container.0 items:generate/perk/11/stats

#abilityがある時はここにコメントを外してファイルをいじる(消して作ったほうが早いかも。その場合は最初の一行を空ける。)
item modify block 0 0 0 container.0 items:generate/perk/11/ability

item modify block 0 0 0 container.0 items:generate/perk/11/parts

item modify block 0 0 0 container.0 items:generate/perk/11/flavor

#アトリビュートなどを追加したい場合はコメントをはずしてファイルを作成する
item modify block 0 0 0 container.0 items:generate/perk/11/others
