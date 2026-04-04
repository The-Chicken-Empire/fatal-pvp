scoreboard players set @s damagetaken 60
tag @s add magicdamage
tag @s add rangedamage
scoreboard players operation @s attackerdata = @e[tag=m61id2tmp,limit=1] owner

function damage:atkercheck

scoreboard players set $eng main 5
execute as @a[tag=playing] if score @s playerdata = @e[tag=m61id2tmp,limit=1] owner run function api:charge/

execute as @a[tag=playing] if score @s playerdata = @e[tag=m61id2tmp,limit=1] owner run tag @s add buffer
function effects:system/gain/ {id:54,level:10,duration:100}

execute at @s run playsound entity.firework_rocket.twinkle ambient @a ~ ~ ~ 0.6 1.6 0