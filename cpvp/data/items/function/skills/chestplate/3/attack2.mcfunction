execute unless entity @e[tag=victim,tag=rangedamagetmp,tag=physicaldamagetmp] run return fail
execute store result score $tmp random run random value 1..100
execute if score $tmp random matches 41.. run return run scoreboard players reset $tmp random
scoreboard players reset $tmp random

tag @s add cp3tmp2

execute as @e[tag=victim] at @s summon item_display run function items:skills/chestplate/3/summonitemdisplay
execute at @s run playsound entity.blaze.hurt hostile @s ~ ~ ~ 0.7 1 0.7
execute as @a[tag=victim] run playsound block.portal.travel block @s ~ ~ ~ 0.8 2 0.8

tag @s remove cp3tmp2