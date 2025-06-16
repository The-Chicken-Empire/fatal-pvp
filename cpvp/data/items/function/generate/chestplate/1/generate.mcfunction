#> items:generate/chestplate/1/generate
#
# アイテム名 : Rスーツ
# 0 0 0のブロックのcontainer.0に生成します
# 
# @within items:*

item replace block 0 0 0 container.0 with dirt

item modify block 0 0 0 container.0 items:generate/chestplate/1/item

item modify block 0 0 0 container.0 items:generate/chestplate/1/name

item modify block 0 0 0 container.0 items:generate/chestplate/1/custom_data

item modify block 0 0 0 container.0 items:generate/chestplate/1/cost

item modify block 0 0 0 container.0 items:generate/chestplate/1/stats

item modify block 0 0 0 container.0 items:generate/chestplate/1/flavor

#アトリビュートなどを追加したい場合はコメントをはずしてファイルを作成する
item modify block 0 0 0 container.0 items:generate/chestplate/1/others
