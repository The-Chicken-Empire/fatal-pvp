scoreboard players set @s damagetaken 60
tag @s add magicdamage
tag @s add rangedamage
scoreboard players operation @s attackerdata = @e[tag=m61id2tmp,limit=1] owner

function damage:atkercheck

scoreboard players set $eng main 5
execute as @a[tag=playing] if score @s playerdata = @e[tag=m61id2tmp,limit=1] owner run function api:charge/

function effects:system/pick/ {id:54}
scoreboard players set $tmp tmp 0
execute store result score $tmp tmp run data get storage effect: targeteffect.level
execute if score $tmp tmp matches 1.. run return run scoreboard players reset $tmp tmp

function effects:system/pick/ {id:53}
scoreboard players set $tmp tmp 0
execute store result score $tmp tmp run data get storage effect: targeteffect.level

scoreboard players add $tmp tmp 15

execute store result storage cpvp:effect53 level int 1 run scoreboard players get $tmp tmp

execute as @a[tag=playing] if score @s playerdata = @e[tag=m61id2tmp,limit=1] owner run tag @s add buffer
function effects:system/gain/ with storage cpvp:effect53
data remove storage cpvp:effect53 level

execute at @s run playsound entity.firework_rocket.twinkle ambient @a ~ ~ ~ 0.6 1.6 0