#音
execute at @s run playsound block.enchantment_table.use player @s ~ ~ ~ 1 0.8 1
#mp

#timer
tag @s add weapon3
execute as @e[type=marker,tag=weapon3] if score @s owner = @a[tag=weapon3,limit=1] playerdata run kill @s
execute at @s run summon marker ~ ~ ~ {Tags:["skillmarker","weapon3"]}
execute as @e[type=marker,tag=weapon3,limit=1,sort=nearest,tag=!tagged] run scoreboard players operation @s owner = @a[tag=weapon3,limit=1] playerdata
execute as @e[type=marker,tag=weapon3,limit=1,sort=nearest] run tag @s add tagged

#modify
item replace block 0 0 0 container.0 from entity @s weapon.mainhand
item modify block 0 0 0 container.0 items:skills/weapon/3/magiced
data modify block 0 0 0 Items.[0].components."minecraft:custom_data" merge value {cpvp:{magiced:1b}}
item replace entity @s weapon.mainhand from block 0 0 0 container.0
scoreboard players set @s weapon3-2 5


scoreboard players set $ct main 600
function api:ct/mainhand
tag @s remove weapon3