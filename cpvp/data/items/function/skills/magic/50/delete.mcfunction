execute as @e[tag=magic50rotate] if score @s markerid = @e[tag=magic50tmp2,limit=1] target run kill @s
execute at @s run particle soul_fire_flame ~ ~ ~ 0 0 0 0.7 30 normal
execute at @s run playsound entity.firework_rocket.blast ambient @a ~ ~ ~ 1 0.3 0
execute at @s run playsound entity.firework_rocket.blast ambient @a ~ ~ ~ 1 0.3 0
execute at @s run playsound entity.firework_rocket.blast ambient @a ~ ~ ~ 1 0.3 0
kill @s