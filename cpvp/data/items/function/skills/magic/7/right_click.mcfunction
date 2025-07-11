#fail
execute unless score @s magic7tank matches 1.. run return run function items:skills/magic/7/fail

#succses
execute at @s run playsound block.respawn_anchor.charge player @s ~ ~ ~ 1 1.2 1
scoreboard players operation @s mp += @s magic7tank
scoreboard players set @s magic7tank 0