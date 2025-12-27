execute at @s run playsound block.vault.insert_item_fail block @a ~ ~ ~ 1 1.2 0
execute at @s run playsound block.vault.insert_item_fail block @a ~ ~ ~ 1 1.2 0
execute at @s run playsound block.vault.insert_item_fail block @a ~ ~ ~ 1 1.2 0

execute as @e[tag=magic62sting1] if score @s target = @e[tag=magic62clocktmp,limit=1] markerid run function items:skills/magic/62/move1
execute as @e[tag=magic62sting2] if score @s target = @e[tag=magic62clocktmp,limit=1] markerid run function items:skills/magic/62/move2
scoreboard players reset $m62tmp random
scoreboard players reset $m62tmp2 random