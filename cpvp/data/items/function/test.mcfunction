function effects:system/pick/ {id:46}
execute store result score $tmp tmp run data get storage effect: targeteffect.level
tellraw @s [{score:{objective:tmp,name:"$tmp"}}]
scoreboard players reset $tmp tmp