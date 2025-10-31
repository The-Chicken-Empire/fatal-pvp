#> items:generate/food/3/generate
#
# アイテム名 : 炎龍の血晶
# 0 0 0のブロックのcontainer.0に生成します
# 
# @within items:*

item replace block 0 0 0 container.0 with dirt

item modify block 0 0 0 container.0 items:generate/food/3/item

item modify block 0 0 0 container.0 items:generate/food/3/name

item modify block 0 0 0 container.0 items:generate/food/3/custom_data

item modify block 0 0 0 container.0 items:generate/food/3/stats

item modify block 0 0 0 container.0 items:generate/food/3/ability

item modify block 0 0 0 container.0 items:generate/food/3/parts

item modify block 0 0 0 container.0 items:generate/food/3/flavor

#アトリビュートなどを追加したい場合はコメントをはずしてファイルを作成する
#item modify block 0 0 0 container.0 items:generate/food/3/others
