#mp減少
scoreboard players operation @s mp -= @s mpcost

tag @s add weapon4tmp
execute positioned ~ ~1 ~ run function items:skills/weapon/4_old/particles
summon marker ~ ~ ~ {Tags:["weapon4","skillmarker"]}
execute if entity @e[tag=weapon4] as @e[tag=weapon4] unless score @s owner matches -2147483648..2147483647 store result score @s owner run scoreboard players get @e[tag=weapon4tmp,limit=1] playerdata
execute if entity @e[tag=weapon4] as @e[tag=weapon4] if score @s owner = @e[tag=weapon4tmp,limit=1] playerdata store result score @s teamscore run scoreboard players get @e[tag=weapon4tmp,limit=1] teamscore
tag @s add weapon4-2
tag @s remove weapon4tmp

scoreboard players set $ct main 240
function api:ct/mainhand