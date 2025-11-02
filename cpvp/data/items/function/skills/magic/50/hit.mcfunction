#mrred
execute as @a if score @s playerdata = @e[tag=magic50tmp2,limit=1] owner run tag @s add buffer
scoreboard players set $tmp tmp 0
function effects:system/pick/ {id:37}
execute store result score $tmp tmp run data get storage effect: targeteffect.level
execute if score $tmp tmp matches ..0 run function effects:system/gain/ {id:37,level:3,duration:120}
execute if score $tmp tmp matches 1.. run function effects:system/modify/ {id:37,level:1,duration:120}
scoreboard players reset $tmp tmp
#maxmpred
execute as @a if score @s playerdata = @e[tag=magic50tmp2,limit=1] owner run tag @s add buffer
scoreboard players set $tmp tmp 0
function effects:system/pick/ {id:38}
execute store result score $tmp tmp run data get storage effect: targeteffect.level
execute if score $tmp tmp matches ..0 run function effects:system/gain/ {id:38,level:3,duration:120}
execute if score $tmp tmp matches 1.. run function effects:system/modify/ {id:38,level:1,duration:120}
scoreboard players reset $tmp tmp

execute at @s run playsound entity.player.hurt_drown player @s 1 1.3 1
execute at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 1 1.5 1