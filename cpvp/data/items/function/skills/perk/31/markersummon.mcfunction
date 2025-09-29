tag @s add perk31.mk1
tag @s add skillmarker
execute store result score @s teamscore run scoreboard players get @e[tag=perk31.skillact,limit=1] teamscore
execute store result score @s owner run scoreboard players get @e[tag=perk31.skillact,limit=1] playerdata
