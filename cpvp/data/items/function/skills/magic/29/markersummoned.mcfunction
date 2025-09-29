tag @s add m29marker
scoreboard players operation @s owner = @a[tag=m29tmp] playerdata
scoreboard players operation @s teamscore = @a[tag=m29tmp] teamscore

execute store result entity @s Rotation[0] float 1 run data get entity @a[tag=m29tmp,limit=1] Rotation[0]
kill @s