execute at @s run tp @s @e[tag=m63marktp,limit=1]
execute at @s run playsound block.beacon.activate block @s ~ ~ ~ 1 1.7 1
execute at @s run playsound entity.enderman.teleport hostile @s ~ ~ ~ 1 2 1
kill @e[tag=m63marktp]