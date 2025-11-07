function effects:system/pick/ {id:6}
scoreboard players set $tmp tmp 0
execute store result score $tmp tmp run data get storage effect: targeteffect.level
execute if score $tmp tmp matches 1.. run return run scoreboard players reset $tmp tmp

execute store result score @s damagetaken run data get storage effect: tmp2.level
scoreboard players operation @s damagetaken *= $10 main

execute store result score @s attackerdata run data get storage effect: tmp2.buffer
data modify storage atktrigger: hage set value {itemtype:none,id:none,atktype:burn}
execute at @s run particle flame ~ ~1 ~ 0.5 0.7 0.5 0.02 15

tag @s add specialdamage
function damage:atkercheck
execute at @s run playsound entity.player.hurt_on_fire player @a ~ ~ ~ 1 1 0