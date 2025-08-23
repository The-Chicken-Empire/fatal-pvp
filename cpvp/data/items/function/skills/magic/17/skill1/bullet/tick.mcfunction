scoreboard players add @s counter 1
scoreboard players set @s counter2 50
tag @s add cp.tmp
execute at @s run function items:skills/magic/17/skill1/bullet/tp
tag @s remove cp.tmp
execute if entity @s[tag=cp.remove] run return run kill

execute if score @s counter matches 100.. run kill