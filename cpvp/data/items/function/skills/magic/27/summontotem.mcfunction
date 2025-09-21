tag @s add skillmarker
tag @s add magic27totem
tag @s add magic27tmp2
tag @s add construction
scoreboard players operation @s owner = @a[tag=magic27tmp,limit=1] playerdata
scoreboard players operation @s teamscore = @a[tag=magic27tmp,limit=1] teamscore
execute at @s run tp @s ~ ~ ~ 0 0
data modify entity @s Invisible set value 1b
data modify entity @s NoAI set value 1b
data modify entity @s Silent set value 1b

attribute @s max_health base set 15

function system:initialize

execute at @s positioned ~ ~1 ~ summon item_display run function items:skills/magic/27/summonitemdisplay
tag @s remove magic27tmp2