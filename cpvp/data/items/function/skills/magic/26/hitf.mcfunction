tag @s add magicdamage
tag @s add rangedamage
scoreboard players set @s damagetaken 30
scoreboard players operation @s attackerdata = @e[tag=magic26ftmp,limit=1] owner
execute at @s run playsound block.lava.pop hostile @a[distance=..10] ~ ~ ~ 1 1 0
execute at @s run playsound block.lava.pop hostile @a[distance=..10] ~ ~ ~ 1 1 0

execute as @a if score @s playerdata = @e[tag=magic26ftmp,limit=1] owner run tag @s add buffer
function effects:system/gain/ {id:40,level:1,duration:100}

function damage:atkercheck

execute summon marker run function items:skills/magic/26/damagectf