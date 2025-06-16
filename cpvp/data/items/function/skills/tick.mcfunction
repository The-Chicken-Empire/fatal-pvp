##gun
#弾捨て
execute if entity @a[predicate=items:gun/dropbullet,limit=1] as @a[predicate=items:gun/dropbullet] unless data entity @s equipment.offhand.components."minecraft:custom_data".cpvp.bullet run function items:skills/gun/dropbullet
#リロード
execute as @a if predicate items:gun/gunreload run scoreboard players add @s gunreload 1
execute as @a if score @s gunreload matches 1.. unless predicate items:gun/gunreload run scoreboard players set @s gunreload 0
#1 ハンドガン
execute as @a if predicate items:gun/1/g1reload run function items:skills/gun/1/reloadtick
execute as @a if predicate items:gun/1/g1 if score @s carrotuse matches 1.. run function items:skills/gun/1/check
##magic
#1 スプラッシュボム
execute as @e if entity @s[tag=splashbomb] run function items:skills/magic/1/tick
##item
#1 死亡診断書
execute as @a if predicate items:i1 if score @s carrotuse matches 1.. run function items:skills/item/1/check