execute store result score @s damagetaken run data get storage effect: tmp2.level
scoreboard players operation @s damagetaken *= $5 main

execute store result score @s attackerdata run data get storage effect: tmp2.buffer
data modify storage atktrigger: hage set value {itemtype:none,id:none,atktype:froze}
execute at @s run particle snowflake ~ ~1 ~ 0.5 0.7 0.5 0.02 15

tag @s add specialdamage
function damage:atkercheck
execute at @s run playsound entity.player.hurt_freeze player @a ~ ~ ~ 1 1 0