tag @s add magic50tmp2

execute as @e[tag=magic50rotate] if score @s markerid = @e[tag=magic50tmp2,limit=1] target run tag @s add magic50tmp3
execute at @s rotated as @e[tag=magic50tmp3,limit=1] if score @s counting3 matches 0 run tp @s ^ ^ ^0.25
execute at @s rotated as @e[tag=magic50tmp3,limit=1] if score @s counting3 matches 1 run tp @s ^ ^ ^0.21
execute at @s rotated as @e[tag=magic50tmp3,limit=1] if score @s counting3 matches 2 run tp @s ^ ^ ^0.17
execute at @s rotated as @e[tag=magic50tmp3,limit=1] if score @s counting3 matches 3 run tp @s ^ ^ ^0.14
execute at @s rotated as @e[tag=magic50tmp3,limit=1] if score @s counting3 matches 4 run tp @s ^ ^ ^0.12
execute at @s rotated as @e[tag=magic50tmp3,limit=1] if score @s counting3 matches 5 run tp @s ^ ^ ^0.10
execute at @s rotated as @e[tag=magic50tmp3,limit=1] if score @s counting3 matches 6 run tp @s ^ ^ ^0.08
execute at @s rotated as @e[tag=magic50tmp3,limit=1] if score @s counting3 matches 7 run tp @s ^ ^ ^0.06
tag @e[tag=magic50tmp3] remove magic50tmp3
scoreboard players remove @s counting2 1

execute at @s run tp @s ~ ~ ~ ~10 ~
execute at @s run particle dust_color_transition{from_color:15615,to_color:5177487,scale:1.2} ~ ~ ~ 0.3 0.6 0.3 0 4
execute at @s run particle end_rod ~ ~ ~ 0.2 0.4 0.2 0 2

execute if score @s counting2 matches ..0 run function items:skills/magic/50/hitcheck

execute if score @s counting matches ..0 run function items:skills/magic/50/delete
tag @s remove magic50tmp2