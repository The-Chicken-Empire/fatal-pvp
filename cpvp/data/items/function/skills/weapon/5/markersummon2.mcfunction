tag @s add w5.2marker
tag @s add skillmarker
execute store result score @s teamscore run scoreboard players get @e[tag=w5skilltmp2,limit=1] teamscore
execute store result score @s owner run scoreboard players get @e[tag=w5skilltmp2,limit=1] playerdata
