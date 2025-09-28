scoreboard players operation #counter counter = @s magic37
scoreboard players operation #counter counter %= $20 main

tp 0-0-0-0-0 ~ ~ ~ 0 0
execute store result entity 0-0-0-0-0 Rotation[0] float -18 run scoreboard players get @s magic37
execute at @s run function items:skills/magic/37/particle/aura/3/3_blo
execute as 0-0-0-0-0 at @s run tp @s ~ ~ ~ ~60 0
execute at @s run function items:skills/magic/37/particle/aura/3/3_blo
execute as 0-0-0-0-0 at @s run tp @s ~ ~ ~ ~60 0
execute at @s run function items:skills/magic/37/particle/aura/3/3_blo
execute as 0-0-0-0-0 at @s run tp @s ~ ~ ~ ~60 0
execute at @s run function items:skills/magic/37/particle/aura/3/3_blo
execute as 0-0-0-0-0 at @s run tp @s ~ ~ ~ ~60 0
execute at @s run function items:skills/magic/37/particle/aura/3/3_blo
execute as 0-0-0-0-0 at @s run tp @s ~ ~ ~ ~60 0
execute at @s run function items:skills/magic/37/particle/aura/3/3_blo


scoreboard players reset #counter