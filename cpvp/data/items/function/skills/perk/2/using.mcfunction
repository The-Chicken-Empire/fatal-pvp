#判定
tag @s add perk2
scoreboard players reset $check tmp
execute store result score $check tmp run function items:skills/perk/2/checkenemy
execute if score @s perk2 matches ..1600 if score $check tmp matches 1.. run scoreboard players add @s perk2 1
execute if score @s perk2 matches ..1600 if score $check tmp matches 1.. run scoreboard players add @s perk2-3 1
scoreboard players reset $check tmp
execute store result score $check tmp run function items:skills/perk/2/checkmate
execute if score @s perk2 matches ..1600 if score $check tmp matches 1.. run scoreboard players add @s perk2 1
execute if score @s perk2 matches ..1600 if score $check tmp matches 1.. run scoreboard players add @s perk2-3 1
#強化判定
#音
execute if score @s perk2-3 matches 20.. at @s run playsound entity.blaze.shoot ambient @s ~ ~ ~ 1 2 1
execute if score @s perk2-3 matches 20.. run scoreboard players remove @s perk2-3 20
function items:skills/perk/2/upgrade
tag @s remove perk2