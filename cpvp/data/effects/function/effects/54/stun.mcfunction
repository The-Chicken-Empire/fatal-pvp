tag @s remove m62paratmp
scoreboard players reset $m62paratmp tmp

execute at @s run particle dust{color:2097210,scale:1} ~ ~ ~ 0.3 0.6 0.3 0 25 normal
execute at @s run playsound entity.firework_rocket.twinkle player @a ~ ~1 ~ 1 1.8 0
execute at @s run playsound entity.firework_rocket.twinkle player @a ~ ~1 ~ 1 1.8 0

execute store result score $tmp tmp run data get storage effect: tmp2.buffer
execute as @a if score @s playerdata = $tmp tmp run tag @s add buffer
function effects:system/gain/ {id:25,level:1,duration:30}