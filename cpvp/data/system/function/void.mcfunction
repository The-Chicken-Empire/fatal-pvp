scoreboard players reset $voidtmp tmp
execute store result score $voidtmp tmp run data get entity @s Pos.[1] 1

execute if score $voidtmp tmp matches ..-120 if entity @s[tag=playing,type=!player] run function damage:entity_death
execute if score $voidtmp tmp matches ..-120 if entity @s[type=player,tag=playing] run function system:death
execute if score $voidtmp tmp matches ..-120 run tp @s ~ 0 ~
execute if score $voidtmp tmp matches ..-120 at @s run playsound block.beacon.deactivate master @s ~ ~ ~ 1 0.8 1
scoreboard players reset $voidtmp tmp