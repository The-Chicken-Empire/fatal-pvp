#> items:generate/weapon/7/generate
#
# アイテム名 : -Avarice-
# 0 0 0のブロックのcontainer.0に生成します
# 
# @within items:*

item replace block 0 0 0 container.0 with dirt

item modify block 0 0 0 container.0 items:generate/weapon/7/item

item modify block 0 0 0 container.0 items:generate/weapon/7/name

item modify block 0 0 0 container.0 items:generate/weapon/7/custom_data

item modify block 0 0 0 container.0 items:generate/weapon/7/cost

item modify block 0 0 0 container.0 items:generate/weapon/7/stats

#abilityがある時はここにコメントを外してファイルをいじる(消して作ったほうが早いかも。その場合は最初の一行を空ける。)
item modify block 0 0 0 container.0 items:generate/weapon/7/ability

item modify block 0 0 0 container.0 items:generate/weapon/7/parts

item modify block 0 0 0 container.0 items:generate/weapon/7/flavor

#アトリビュートなどを追加したい場合はコメントをはずしてファイルを作成する
item modify block 0 0 0 container.0 items:generate/weapon/7/others
