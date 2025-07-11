#音
execute at @s run playsound block.enchantment_table.use player @s ~ ~ ~ 1 0.8 1
#mp
scoreboard players operation @s mp -= @s mpcost
#timer
tag @s add weapon3
execute as @e[type=marker,tag=weapon3] if score @s owner = @a[tag=weapon3,limit=1] playerdata run kill @s
execute at @s run summon marker ~ ~ ~ {Tags:["skillmarker","weapon3"]}
execute as @e[type=marker,tag=weapon3,limit=1,sort=nearest,tag=!tagged] run scoreboard players operation @s owner = @a[tag=weapon3,limit=1] playerdata
execute as @e[type=marker,tag=weapon3,limit=1,sort=nearest] run tag @s add tagged

#modify
setblock 0 0 0 shulker_box replace
item replace block 0 0 0 container.0 from entity @s weapon.mainhand
item modify block 0 0 0 container.0 items:weapon/3/magiced
data modify block 0 0 0 Items.[0].components."minecraft:custom_data" merge value {cpvp:{magiced:1b}}
item replace entity @s weapon.mainhand from block 0 0 0 container.0
scoreboard players set @s weapon3-2 5


function system:cooltime/general/set_ct_mainhand {cooltime:600}
tag @s remove weapon3