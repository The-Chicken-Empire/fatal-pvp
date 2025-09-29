execute store result score @s owner run scoreboard players get @e[tag=perk31.skillacting.tmp,limit=1] playerdata
execute store result score @s teamscore run scoreboard players get @e[tag=perk31.skillacting.tmp,limit=1] teamscore
tag @s add perk31.mk3
execute positioned ~ ~0.2 ~ at @s run function items:skills/perk/31/circle