tag @s add magic41tmp2
scoreboard players operation $tmp tmp = @s skills
scoreboard players operation $tmp tmp %= $2 main
execute if score $tmp tmp matches 0 run function items:skills/magic/41/charge
scoreboard players reset $tmp tmp

tag @s remove magic41tmp2