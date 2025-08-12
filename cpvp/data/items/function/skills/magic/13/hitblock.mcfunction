tag @s remove magic13
tag @s add magic13markblock
tag @s add magic13marker
scoreboard players set @s magic13 0
scoreboard players set @s skills 0

execute as @a if score @s playerdata = @e[tag=magic13tmp2,limit=1] owner at @s run playsound item.trident.return player @s ~ ~ ~ 1 1 1
execute as @a if score @s playerdata = @e[tag=magic13tmp2,limit=1] owner at @s summon marker run function items:skills/magic/13/summoncallmarker