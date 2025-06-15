##magic

# trigger処理
execute as @a at @s run function items:triggers/tick/check
execute as @a if score @s carrotuse matches 1.. at @s run function items:triggers/right_click/check

# スキルごとの処理
execute if entity @e[tag=splashbomb, limit=1] as @e[tag=splashbomb] run function items:magic/m001/tick