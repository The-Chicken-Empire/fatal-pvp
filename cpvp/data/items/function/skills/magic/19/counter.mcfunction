execute as @a[tag=atker,limit=1] at @s run playsound block.glass.break block @s ~ ~ ~ 1 0.8 1
execute as @a[tag=atker,limit=1] run function effects:system/gain/ {id:27,level:2,duration:100}