tag @s add magic15tmp3

execute unless entity @a[distance=..4,tag=magic15tmp4] at @s run tp @s ^ ^ ^2


tag @a remove magic15tmp4




execute at @s summon item_display run function items:skills/magic/15/summonitemdisplay


tag @s remove magic15tmp3