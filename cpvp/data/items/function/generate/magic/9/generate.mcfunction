#> items:generate/magic/9/generate
#
# アイテム名 : ディフュージョンデバイス
# 0 0 0のブロックのcontainer.0に生成します
# 
# @within items:*

item replace block 0 0 0 container.0 with dirt

item modify block 0 0 0 container.0 items:generate/magic/9/item

item modify block 0 0 0 container.0 items:generate/magic/9/name

item modify block 0 0 0 container.0 items:generate/magic/9/custom_data

item modify block 0 0 0 container.0 items:generate/magic/9/cost

item modify block 0 0 0 container.0 items:generate/magic/9/stats

#abilityがある時はここにコメントを外してファイルをいじる(消して作ったほうが早いかも。その場合は最初の一行を空ける。)
item modify block 0 0 0 container.0 items:generate/magic/9/ability

item modify block 0 0 0 container.0 items:generate/magic/9/parts

item modify block 0 0 0 container.0 items:generate/magic/9/flavor

#アトリビュートなどを追加したい場合はコメントをはずしてファイルを作成する
#item modify block 0 0 0 container.0 items:generate/magic/9/others
