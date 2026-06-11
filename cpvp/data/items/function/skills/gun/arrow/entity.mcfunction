execute store result score $tmp2 tmp run data get entity @s Health 10
scoreboard players operation $tmp tmp = $10000 main
scoreboard players operation $tmp tmp -= $tmp2 tmp

scoreboard players operation $tntn tmp = $tmp tmp

tag @s add physicaldamage
tag @s add rangedamage

scoreboard players operation @s attackerdata = @a[tag=rangeattackertmp,limit=1] playerdata
scoreboard players operation @s damagetaken = $tmp tmp
tag @s add rangevictim
tag @e[tag=rangeattackertmp] add rangeattacker

data modify storage atktrigger: hage set value {itemtype:gun,atktype:shot}
data modify storage atktrigger: hage.id set from storage cpvp:gundata id

function damage:atkercheck

data modify entity @s Health set value 1000
tag @e[tag=rangeattackertmp] remove rangeattackertmp
scoreboard players reset $tmp tmp
scoreboard players reset $tmp2