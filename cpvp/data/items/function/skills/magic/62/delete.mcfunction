execute at @s run particle white_smoke ~ ~1.5 ~ 0 0 0 0.3 20 normal
execute at @s run particle white_smoke ~ ~1.5 ~ 0 0 0 0.5 20 normal
execute at @s run playsound entity.creaking.death hostile @a ~ ~ ~ 1 1.2 0
execute at @s run playsound entity.creaking.death hostile @a ~ ~ ~ 1 1.2 0
execute at @s run playsound entity.creaking.death hostile @a ~ ~ ~ 1 1.2 0

execute as @e[tag=magic62sting1] if score @s target = @e[tag=magic62clocktmp,limit=1] markerid run kill @s
execute as @e[tag=magic62sting2] if score @s target = @e[tag=magic62clocktmp,limit=1] markerid run kill @s
kill @s