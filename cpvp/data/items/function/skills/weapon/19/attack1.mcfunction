execute unless entity @e[tag=victim,tag=meleevictim] run return fail

scoreboard players operation $tmp tmp = @s speed
scoreboard players operation $tmp tmp /= $4 main
scoreboard players reset $tmp2 tmp
execute store result score $tmp2 tmp run random value 1..100
execute if score $tmp tmp >= $tmp2 tmp run function items:skills/weapon/19/special

scoreboard players add $damageadd damagecalc 40

scoreboard players reset $tmp tmp
scoreboard players reset $tmp tmp