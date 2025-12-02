scoreboard players reset $tmp tmp

tag @s add buffer
function effects:system/remove/ {id:53}

execute store result score $tmp tmp run data get storage effect: tmp2.buffer

execute as @a if score @s playerdata = $tmp tmp run tag @s add buffer
function effects:system/gain/ {id:54,duration:400,level:1}

execute store result score @s attackerdata run data get storage effect: tmp2.buffer
data modify storage atktrigger: hage set value {itemtype:none,id:none,atktype:paracore}
tag @s add truedamage
scoreboard players set @s damagetaken 80
function damage:atkercheck

execute at @s run playsound entity.wither.hurt player @a ~ ~ ~ 1 0 0
execute at @s run playsound entity.generic.explode block @a ~ ~ ~ 1 1.5 0
execute at @s run particle ash ~ ~1 ~ 1.2 1 1.2 0.25 35
execute at @s run particle electric_spark ~ ~1 ~ 1.2 1 1.2 0.3 35
execute at @s run particle white_smoke ~ ~1 ~ 1.2 1 1.2 0.25 35
execute at @s run particle explosion ~ ~1 ~ 0.8 1 0.8 0.1 8
scoreboard players reset $tmp tmp