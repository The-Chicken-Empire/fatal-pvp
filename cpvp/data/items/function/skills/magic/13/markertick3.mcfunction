tag @s add magic13tmp4
scoreboard players set $tmp tmp 0
execute as @e[tag=magic13-2] if score @s magic13markID2 = @e[tag=magic13tmp4,limit=1] markerid run scoreboard players add $tmp tmp 1
tag @s remove magic13tmp4
execute if score $tmp tmp matches 0 run function items:skills/magic/13/deletemark