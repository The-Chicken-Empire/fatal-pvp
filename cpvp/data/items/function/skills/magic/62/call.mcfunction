tag @s add magic62call
execute as @e[tag=magic62timertmp] if score @s owner = @a[tag=magic62call,limit=1] playerdata at @s run kill @s

execute at @s run playsound block.trial_spawner.detect_player hostile @a ~ ~ ~ 1 0.4 0
execute at @s run playsound block.trial_spawner.detect_player hostile @a ~ ~ ~ 1 0.4 0
execute at @s run playsound block.trial_spawner.detect_player hostile @a ~ ~ ~ 1 0.4 0

execute at @s summon item_display run function items:skills/magic/62/summonclock



tag @s remove magic62call