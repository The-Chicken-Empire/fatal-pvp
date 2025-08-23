tag @s add skillmarker
tag @s add magic16
execute at @s run tp @s ~ ~1 ~
scoreboard players operation @s owner = @a[tag=magic16tmp,limit=1] playerdata
execute at @s summon item_display run function items:skills/magic/16/summonitemdisplay