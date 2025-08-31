scoreboard players remove #counter0931248 counter 1
gamemode creative
tp @s ~ ~1000 ~
$execute rotated $(x) $(y) positioned ~0 ~1000 ~0 positioned ^ ^ ^-10 run execute summon end_crystal run damage @s 0
tp @s ~ ~ ~
gamemode adventure
execute if score #counter0931248 counter matches 1.. at @s run function api:motion/recurse with storage api: motion