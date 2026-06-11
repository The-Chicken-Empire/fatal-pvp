tag @s add rangevictim
tag @s remove rangenexttick
tag @s remove rangenexttick
execute as @a if score @s playerdata = @e[tag=rangevictim,limit=1] rangeattacker run tag @s add rangeattacker

scoreboard players operation @s damagetaken = @s damageresist
scoreboard players reset @s damageresist

tag @s add physicaldamage
tag @s add rangedamage
scoreboard players operation @s attackerdata = @e[tag=rangeattacker,limit=1] playerdata

data modify storage atktrigger: hage set value {itemtype:gun,atktype:shot}
execute store result storage atktrigger: hage.id int 1 run scoreboard players get @s usedgun


function damage:atkercheck
scoreboard players reset @s usedgun