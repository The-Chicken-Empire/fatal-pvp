scoreboard players operation $tmp tmp = @e[tag=victim,limit=1] damagetaken
scoreboard players operation $tmp tmp *= $100 main
scoreboard players operation $tmp tmp /= @e[tag=victim,limit=1] maxhp

execute unless score $tmp tmp matches 60.. run return run scoreboard players reset $tmp tmp

tag @s add buffer
execute as @e[tag=victim,limit=1] run function effects:system/gain/ {id:15,level:1,duration:120}
tag @s add buffer
execute as @e[tag=victim,limit=1] run function effects:system/gain/ {id:17,level:1,duration:120}
execute as @e[tag=victim] at @s run playsound entity.generic.explode block @a[distance=..10] ~ ~ ~ 1 0.5 0
execute as @e[tag=victim] at @s run playsound entity.skeleton_horse.hurt block @a[distance=..10] ~ ~ ~ 1 0.5 0

scoreboard players reset $tmp tmp