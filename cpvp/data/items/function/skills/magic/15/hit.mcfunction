scoreboard players set @s damagetaken 60
tag @s add magicdamage
tag @s add rangedamage
scoreboard players operation @s attackerdata = @e[tag=magic15tmp5,limit=1] owner

execute as @a if score @s playerdata = @e[tag=magic15tmp5,limit=1] owner run tag @s add buffer
function effects:system/gain/ {id:19,level:1,duration:120}

function damage:atkercheck