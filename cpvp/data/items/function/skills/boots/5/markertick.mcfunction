tag @s add boots5tmp2
execute if score @s skills matches 20 as @a if score @s playerdata = @e[tag=boots5tmp2,limit=1] target at @s run function items:skills/boots/5/fall

execute if score @s skills matches 21.. as @a if score @s playerdata = @e[tag=boots5tmp2,limit=1] target at @s run particle flame ~ ~ ~ 0.1 0 0.1 0.1 8
execute if score @s skills matches 21.. as @a if score @s playerdata = @e[tag=boots5tmp2,limit=1] target store result score $tmp tmp run data get entity @s OnGround
execute if score $tmp tmp matches 1 as @a if score @s playerdata = @e[tag=boots5tmp2,limit=1] target at @s run function items:skills/boots/5/hitground

scoreboard players reset $tmp tmp

execute if score @s skills matches 30.. as @a if score @s playerdata = @e[tag=boots5tmp2,limit=1] target run function items:skills/boots/5/timeover

tag @s remove boots5tmp2
