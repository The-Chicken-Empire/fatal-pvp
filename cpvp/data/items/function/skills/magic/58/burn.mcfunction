tag @s add magic58markertmp
execute as @a if score @s playerdata = @e[tag=magic58markertmp,limit=1] owner run tag @s add buffer
tag @s remove magic58markertmp

execute as @e[tag=victim] run function effects:system/gain/ {id:40,level:1,duration:100}
execute as @e[tag=victim] at @s run playsound item.firecharge.use block @s ~ ~ ~ 0.7 2 1
kill @s