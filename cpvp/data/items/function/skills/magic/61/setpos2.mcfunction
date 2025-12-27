execute at @s run tp @s ~ ~1 ~
execute at @s if block ~ ~ ~ #main:air run return fail
execute at @s unless block ~ ~ ~ #main:air run function items:skills/magic/61/setpos2