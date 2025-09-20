tag @s add skillmarker
scoreboard players operation @s owner = @e[tag=tmp] owner
scoreboard players operation @s teamscore = @e[tag=tmp] teamscore

tag @s add m14bullettmp
execute at @s as @e[distance=..16,tag=playing] unless score @e[tag=m14bullettmp,limit=1] teamscore = @s teamscore run tag @s add m14target
execute unless entity @e[tag=m14target,distance=..32] store result entity @s Rotation[0] float 1 run random value -179..180
execute unless entity @e[tag=m14target,distance=..32] store result entity @s Rotation[1] float 1 run random value -90..0
tag @s remove m14bullettmp

execute at @s facing entity @e[sort=nearest,limit=1,tag=m14target] eyes run rotate @s ~ ~
tag @e[tag=m14target] remove m14target

tag @s add m14bullet