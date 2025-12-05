tag @s add magic57markertmp
execute as @a if score @s playerdata = @e[tag=magic57markertmp,limit=1] owner run tag @s add buffer
tag @s remove magic57markertmp

execute as @e[tag=victim] run function effects:system/gain/ {id:39,level:1,duration:140}
execute as @e[tag=victim] at @s run playsound block.glass.break block @s ~ ~ ~ 0.7 2 1
kill @s