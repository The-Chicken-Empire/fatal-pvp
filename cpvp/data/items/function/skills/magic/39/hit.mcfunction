scoreboard players set $tmp tmp 0
function effects:system/pick/ {id:40}
execute store result score $tmp tmp run data get storage effect: targeteffect.level
execute if score $tmp tmp matches 1.. run return run scoreboard players reset $tmp tmp



tag @s add magicdamage
tag @s add meleedamage
scoreboard players set @s damagetaken 0

execute as @a if score @s playerdata = @e[tag=magic39tmp2,limit=1] owner run tag @s add magic39tmp3
scoreboard players operation @s attackerdata = @a[tag=magic39tmp3,limit=1] playerdata

scoreboard players set $tmp tmp 0
function effects:system/pick/ {id:39}
execute store result score $tmp tmp run data get storage effect: targeteffect.level

scoreboard players operation @s damagetaken = $tmp tmp
scoreboard players operation @s damagetaken *= $50 main

scoreboard players operation $tmp tmp *= $4 main
execute store result score $tmp random run random value 1..100
execute if score $tmp tmp >= $tmp random run tag @s add magic39frostbite

scoreboard players reset $tmp tmp
scoreboard players reset $tmp random

tag @a[tag=magic39tmp3,limit=1] add buffer
function effects:system/gain/ {id:39,level:2,duration:160}
tag @a[tag=magic39tmp3] remove magic39tmp3
function damage:atkercheck
