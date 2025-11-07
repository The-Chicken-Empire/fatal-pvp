execute as @a if score @s playerdata = @e[tag=magic1tmp3,limit=1] owner run tag @s add buffer
function effects:system/gain/ {id:18,level:1,duration:160}

tag @s add magicdamage
tag @s add rangedamage
scoreboard players operation @s attackerdata = @e[tag=magic1tmp3,limit=1] owner
scoreboard players set @s damagetaken 80
function damage:atkercheck