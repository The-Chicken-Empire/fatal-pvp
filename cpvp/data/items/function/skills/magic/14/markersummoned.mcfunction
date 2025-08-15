tag @s add magic14
tag @s add skillmarker
scoreboard players operation @s owner = @e[tag=magic14tmp] playerdata
scoreboard players operation @s teamscore = @e[tag=magic14tmp] teamscore
execute at @s run particle minecraft:squid_ink ~ ~ ~ 0.5 0.5 0.5 0.01 20 force
execute at @s run playsound minecraft:entity.enderman.death hostile @a ~ ~ ~ 1 0.6