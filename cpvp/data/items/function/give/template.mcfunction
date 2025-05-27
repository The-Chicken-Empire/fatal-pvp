# 適当な位置のチェストとかに元となるアイテムを突っ込む
item replace block 0 0 0 container.0 with dirt

# アイテムを置き換える
item modify block 0 0 0 container.0 items:generate/template/set_item

# アイテム名を置き換える
item modify block 0 0 0 container.0 items:generate/template/set_name

# カスタムデータを書き換える
item modify block 0 0 0 container.0 items:generate/template/set_customdata

# アイテムコストのloreを追加
item modify block 0 0 0 container.0 items:generate/template/add_lore_itemcost

# ステータスのloreを追加
item modify block 0 0 0 container.0 items:generate/template/add_lore_stats_mainhand

# スキルのloreとカスタムデータを追加
item modify block 0 0 0 container.0 items:generate/skills/template/add_lore
# こちらも複数ある場合は順次追加

# 生成したものをプレイヤに渡す
item replace entity @s weapon.mainhand from block 0 0 0 container.0