tag @s add offhand24tmp
execute as @e[tag=victim,limit=1] run tag @s add offhand24victim

execute as @e[tag=offhand24victim] run function effects:system/pick/ {id:16}
execute store result score $tmp tmp run data get storage effect: targeteffect.level
execute unless score $tmp tmp matches 1.. run return run function items:skills/offhand/24/fail

execute store result score $tmp2 tmp run data get storage effect: targeteffect.duration
scoreboard players operation $tmp tmp *= $tmp2 tmp
scoreboard players operation $tmp tmp /= $2 main
execute as @e[tag=offhand24victim] at @s run playsound entity.puffer_fish.death hostile @s ~ ~ ~ 1 1.3 1
execute as @e[tag=offhand24victim] at @s run particle dust{color:549120,scale:1} ~ ~1 ~ 0.3 0.6 0.3 0 15

execute as @e[tag=offhand24victim] run function effects:system/remove/ {id:16}

scoreboard players operation @e[tag=offhand24victim,limit=1] attackerdata = @a[tag=offhand24tmp] playerdata
scoreboard players operation @e[tag=offhand24victim,limit=1] damagetaken = $tmp tmp
tag @e[tag=offhand24victim] add truedamage
execute as @e[tag=offhand24victim] run function damage:atkercheck

scoreboard players reset $tmp tmp
tag @s remove offhand24tmp
tag @e[tag=offhand24victim] remove offhand24victim