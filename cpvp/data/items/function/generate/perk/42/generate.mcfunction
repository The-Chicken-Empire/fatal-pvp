#> items:generate/perk/42/generate
#
# アイテム名 : 運命の箱
# 0 0 0のブロックのcontainer.0に生成します
# 
# @within items:*

item replace block 0 0 0 container.0 with dirt

item modify block 0 0 0 container.0 items:generate/perk/42/item

item modify block 0 0 0 container.0 items:generate/perk/42/name

item modify block 0 0 0 container.0 items:generate/perk/42/custom_data

item modify block 0 0 0 container.0 items:generate/perk/42/cost

item modify block 0 0 0 container.0 items:generate/perk/42/stats

item modify block 0 0 0 container.0 items:generate/perk/42/ability

item modify block 0 0 0 container.0 items:generate/perk/42/parts

item modify block 0 0 0 container.0 items:generate/perk/42/flavor

#アトリビュートなどを追加したい場合はコメントをはずしてファイルを作成する
item modify block 0 0 0 container.0 items:generate/perk/42/others
