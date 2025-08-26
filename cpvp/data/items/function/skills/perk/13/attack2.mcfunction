scoreboard players set $check tmp 0
execute as @e[tag=perk13,type=marker] if score @s owner = @e[tag=atker,limit=1] playerdata run scoreboard players set $check tmp 1
execute unless score $check tmp matches 1 run return run scoreboard players set $check tmp 0
scoreboard players set $check tmp 0
execute as @e[tag=perk13,type=marker] if score @s target = @e[tag=victim,limit=1] playerdata run scoreboard players set $check tmp 1
execute unless score $check tmp matches 1 run return run scoreboard players set $check tmp 0
scoreboard players set $check tmp 0

scoreboard players operation $tmp tmp = @s eng
scoreboard players operation $tmp tmp *= $3 main
scoreboard players operation $tmp tmp /= $2 main
scoreboard players operation $damageadd damagecalc += $tmp tmp
scoreboard players set $tmp tmp 0