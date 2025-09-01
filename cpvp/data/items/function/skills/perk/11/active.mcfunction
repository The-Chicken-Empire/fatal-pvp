scoreboard players set @s perk11 0
tag @s add perk11tmp
execute at @s run playsound block.amethyst_block.place block @s ~ ~ ~ 1 1 1
execute at @s summon block_display run function items:skills/perk/11/summonitemdisplay
tag @s remove perk11tmp