execute as @a if score @s playerdata = @e[tag=magic51tmp2,limit=1] owner run tag @s add buffer
function effects:system/gain/ {id:35,level:4,duration:140}
execute as @a if score @s playerdata = @e[tag=magic51tmp2,limit=1] owner run tag @s add buffer
function effects:system/gain/ {id:14,level:2,duration:140}
execute as @a if score @s playerdata = @e[tag=magic51tmp2,limit=1] owner run tag @s add buffer
function effects:system/gain/ {id:36,level:2,duration:140}

execute at @s run playsound entity.elder_guardian.curse hostile @a ~ ~ ~ 1 0.8 0
execute at @s run playsound block.brewing_stand.brew hostile @a ~ ~ ~ 1 1.2 0
execute at @s run particle entity_effect{color:-1299447553} ~ ~ ~ 0 0.3 0 0 10