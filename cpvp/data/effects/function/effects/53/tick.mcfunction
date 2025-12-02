#function effects:system/pick/ {id:46}
scoreboard players set $tmp tmp 0
#execute store result score $tmp tmp run data get storage effect: targeteffect.level
execute store result score $tmp tmp run data get storage effect: tmp2.level
execute if score $tmp tmp matches 200.. run function effects:effects/53/explode

execute if entity @s[tag=effect53explode] run return run tag @s remove effect53explode



#scoreboard players add @s effect46timer 1
#execute if score @s effect46timer matches 200 run function effects:effects/46/reducelevel