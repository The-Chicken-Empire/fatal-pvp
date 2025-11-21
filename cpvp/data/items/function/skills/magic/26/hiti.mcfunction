tag @s add magicdamage
tag @s add rangedamage
scoreboard players set @s damagetaken 30
scoreboard players operation @s attackerdata = @e[tag=magic26itmp,limit=1] owner
execute at @s run playsound entity.stray.hurt hostile @a[distance=..10] ~ ~ ~ 0.6 1.5 0
execute at @s run playsound entity.stray.hurt hostile @a[distance=..10] ~ ~ ~ 0.6 1.5 0

execute as @a if score @s playerdata = @e[tag=magic26itmp,limit=1] owner run tag @s add buffer
function effects:system/gain/ {id:39,level:2,duration:100}

function damage:atkercheck

execute summon marker run function items:skills/magic/26/damagecti