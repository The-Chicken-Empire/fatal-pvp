#> items:generate/magic/3/generate
#
# アイテム名 : Information
# 0 0 0のブロックのcontainer.0に生成します
# 
# @within items:*

item replace block 0 0 0 container.0 with dirt

item modify block 0 0 0 container.0 items:generate/magic/3/item

item modify block 0 0 0 container.0 items:generate/magic/3/name

item modify block 0 0 0 container.0 items:generate/magic/3/custom_data

item modify block 0 0 0 container.0 items:generate/magic/3/cost

item modify block 0 0 0 container.0 items:generate/magic/3/stats

#abilityがある時はここにコメントを外してファイルをいじる(消して作ったほうが早いかも。その場合は最初の一行を空ける。)
item modify block 0 0 0 container.0 items:generate/magic/3/ability

item modify block 0 0 0 container.0 items:generate/magic/3/parts

item modify block 0 0 0 container.0 items:generate/magic/3/flavor

#アトリビュートなどを追加したい場合はコメントをはずしてファイルを作成する
#item modify block 0 0 0 container.0 items:generate/magic/3/others
