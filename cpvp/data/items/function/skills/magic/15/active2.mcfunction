tag @s add magic15tmp3

execute as @a[distance=..10] unless score @s teamscore = @e[tag=magic15tmp3,limit=1] teamscore run tag @s add magic15tmp4
execute if entity @a[tag=magic15tmp4] rotated as @a[tag=magic15tmp4,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
execute unless entity @a[distance=..4,tag=magic15tmp4] at @s run tp @s ^ ^ ^2

execute if entity @a[distance=..4,tag=magic15tmp4] run function items:skills/magic/15/tpplayer


tag @a remove magic15tmp4




execute at @s summon item_display run function items:skills/magic/15/summonitemdisplay


tag @s remove magic15tmp3