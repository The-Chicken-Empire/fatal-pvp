tag @s add m29marker
tag @s add skillmarker
scoreboard players operation @s owner = @a[tag=m29tmp] playerdata
scoreboard players operation @s teamscore = @a[tag=m29tmp] teamscore

tp @s @e[tag=m29marker1.tmp,limit=1,distance=..1]
execute rotated as @s run tp @s ~ ~ ~ ~30 ~
