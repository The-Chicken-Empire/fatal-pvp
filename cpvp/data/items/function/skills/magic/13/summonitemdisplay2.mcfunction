tag @s add magic13-2
tag @s add skillmarker
#modify
data modify entity @s item set value {id:"minecraft:golden_sword",components:{enchantment_glint_override:true}}
data modify entity @s teleport_duration set value 1
data modify entity @s interpolation_duration set value 4
data modify entity @s transformation set value {right_rotation:[0f,0f,-0.415f,1f],scale:[0.5f,0.5f,0.5f],left_rotation:[1f,0f,0f,1f],translation:[0f,0f,0f]}

#owner
scoreboard players operation @s owner = @e[tag=magic13callmarkertmp2,limit=1] owner
scoreboard players operation @s ownerteam = @e[tag=magic13callmarkertmp2,limit=1] ownerteam
scoreboard players operation @s target = @e[tag=magic13callmarkertmp2,limit=1] magic13markID1

tag @s add magic13tmp6

execute as @e[tag=magic13marker] if score @s markerid = @e[tag=magic13tmp6,limit=1] target at @s summon marker run function items:skills/magic/13/tmpmarker
execute at @s facing entity @e[tag=magic13tmpmarker,limit=1] eyes run tp @s ~ ~ ~ ~ ~
kill @e[tag=magic13tmpmarker]
tag @s remove magic13tmp6

execute at @s run playsound block.end_portal_frame.fill master @a ~ ~ ~ 0.6 2 0