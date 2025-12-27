scoreboard players operation $tmp tmp = @s skills
scoreboard players operation $tmp tmp %= $40 main
tag @s add magic62clocktmp
execute if score $tmp tmp matches 0 at @s run function items:skills/magic/62/40t
execute if score $tmp tmp matches 20 run function items:skills/magic/62/20t
scoreboard players reset $tmp tmp
scoreboard players operation $tmp tmp = @s skills
scoreboard players operation $tmp tmp %= $20 main
execute if score $tmp tmp matches 0 at @s run function items:skills/magic/62/1s


execute if score @s counting matches ..0 run function items:skills/magic/62/delete
tag @s remove magic62clocktmp