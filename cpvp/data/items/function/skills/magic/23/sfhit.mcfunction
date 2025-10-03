tag @s add rangedamage
tag @s add magicdamage
scoreboard players set @s damagetaken 5
scoreboard players operation @s attackerdata = @e[tag=magic23tmp7,limit=1] owner

#火傷
scoreboard players set $tmp23 random 0
execute store result score $tmp23 random run random value 1..100
execute if score $tmp23 random matches ..5 as @a if score @s playerdata = @e[tag=magic23tmp5,limit=1] owner run tag @s add buffer
execute if score $tmp23 random matches ..5 run function effects:system/gain/ {id:40,level:2,duration:60}
scoreboard players reset $tmp23 random

function damage:atkercheck