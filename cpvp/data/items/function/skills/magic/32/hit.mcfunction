tag @s add meleedamage
tag @s add magicdamage
scoreboard players set @s damagetaken 90
scoreboard players operation @s attackerdata = @a[tag=magic32tmp,limit=1] playerdata

tag @a[tag=magic32tmp,limit=1] add buffer
function effects:system/gain/ {id:40,level:1,duration:100}

function damage:atkercheck
