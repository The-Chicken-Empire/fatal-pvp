tag @s add magic27tmp
scoreboard players operation @s mp -= @s mpcost

execute at @s run playsound entity.elder_guardian.curse hostile @a[distance=..25] ~ ~ ~ 1 0 0
execute at @s run playsound entity.elder_guardian.hurt hostile @a[distance=..25] ~ ~ ~ 1 0 0
execute at @s summon creeper run function items:skills/magic/27/summontotem

scoreboard players set $ct main 800
function api:ct/mainhand
tag @s remove magic27tmp