tag @s add weapon4-5
tag @s add skillmarker
execute store result score @s owner run scoreboard players get @e[tag=w4checktmp,limit=1] playerdata
execute store result score @s teamscore run scoreboard players get @e[tag=w4checktmp,limit=1] teamscore