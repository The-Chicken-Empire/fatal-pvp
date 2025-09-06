scoreboard players set $tmp tmp 0
scoreboard players set $tmp2 tmp 0

execute if entity @s[tag=meleedamagetmp] run scoreboard players operation $tmp tmp += @s meleedmg
execute if entity @s[tag=meleedamagetmp] run scoreboard players operation $tmp2 tmp += @e[tag=atker,limit=1] meleedmg
execute if entity @s[tag=rangedamagetmp] run scoreboard players operation $tmp tmp += @s rangedmg
execute if entity @s[tag=rangedamagetmp] run scoreboard players operation $tmp2 tmp += @e[tag=atker,limit=1] rangedmg
execute if entity @s[tag=physicaldamagetmp] run scoreboard players operation $tmp tmp += @s physicaldmg
execute if entity @s[tag=physicaldamagetmp] run scoreboard players operation $tmp2 tmp += @e[tag=atker,limit=1] physicaldmg
execute if entity @s[tag=magicdamagetmp] run scoreboard players operation $tmp tmp += @s magicdmg
execute if entity @s[tag=magicdamagetmp] run scoreboard players operation $tmp2 tmp += @e[tag=atker,limit=1] magicdmg
scoreboard players operation $tmp tmp += @s damage
scoreboard players operation $tmp2 tmp += @e[tag=atker,limit=1] damage

execute if score $tmp tmp > $tmp2 tmp run function items:skills/perk/17/active
scoreboard players reset $tmp tmp
scoreboard players reset $tmp2 tmp