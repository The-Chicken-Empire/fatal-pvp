##magic
#m001 スプラッシュボム
execute as @a if predicate items:m001 if score @s carrotuse matches 1.. at @s run function items:magic/m001/check
execute as @e if entity @s[tag=splashbomb] run function items:magic/m001/tick