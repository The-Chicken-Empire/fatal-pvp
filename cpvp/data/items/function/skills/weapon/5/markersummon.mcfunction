tag @s add w5marker
tag @s add skillmarker
execute store result score @s teamscore run scoreboard players get @e[tag=w5skilltmp,limit=1] teamscore
execute store result score @s owner run scoreboard players get @e[tag=w5skilltmp,limit=1] playerdata
