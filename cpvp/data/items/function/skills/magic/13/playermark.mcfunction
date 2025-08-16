tag @s remove magic13
tag @s add magic13marker
tag @s add magic13markplayer
scoreboard players set @s magic13 0
scoreboard players set @s skills 0

data modify entity @s item set value {id:"minecraft:red_concrete",components:{enchantment_glint_override:true}}
data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0.7f,0.7f,0.7f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}
scoreboard players operation @s target = @e[tag=magic13marked] entitydata
execute as @a if score @s playerdata = @e[tag=magic13tmp2,limit=1] owner at @s run playsound item.trident.return player @s ~ ~ ~ 1 2 1
execute as @a if score @s playerdata = @e[tag=magic13tmp2,limit=1] owner at @s summon marker run function items:skills/magic/13/summoncallmarker