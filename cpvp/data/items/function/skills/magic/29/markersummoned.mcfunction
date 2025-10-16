tag @s add m29marker
tag @s add skillmarker
scoreboard players operation @s owner = @a[tag=m29tmp] playerdata
scoreboard players operation @s teamscore = @a[tag=m29tmp] teamscore

execute store result entity @s Rotation[0] float 1 run data get entity @a[tag=m29tmp,limit=1] Rotation[0]
tag @s add m29marker1.tmp
execute summon marker run function items:skills/magic/29/markersummoned2
execute summon marker run function items:skills/magic/29/markersummoned3
tag @s remove m29marker1.tmp
playsound minecraft:block.sweet_berry_bush.break block @a ~ ~ ~ 2 0
execute at @s run particle happy_villager ~ ~0.2 ~ 0.2 0.2 0.2 1 40 force
