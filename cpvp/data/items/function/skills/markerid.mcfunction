scoreboard players add $number markerid 1
execute as @e if score @s markerid = $number markerid run function items:skills/dupe
execute if score $number markerid matches 2100000000.. run scoreboard players set $number markerid 0
scoreboard players operation @s markerid = $number markerid