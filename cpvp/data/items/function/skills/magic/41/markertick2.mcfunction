execute if score @s skills matches ..-1 run return fail

tag @s add magic41tmp4
scoreboard players operation $tmp tmp = @s skills
scoreboard players operation $tmp tmp %= $2 main


execute if score $tmp tmp matches 0 if score @s counting matches 1.. as @a if score @s playerdata = @e[tag=magic41tmp4,limit=1] owner at @s run function items:skills/magic/41/shot
execute if score $tmp tmp matches 0 run scoreboard players remove @s counting 1
execute if score $tmp tmp matches 0 if score @s counting matches ..0 run return run function items:skills/magic/41/tpcheck

scoreboard players reset $tmp tmp


tag @s remove magic41tmp4