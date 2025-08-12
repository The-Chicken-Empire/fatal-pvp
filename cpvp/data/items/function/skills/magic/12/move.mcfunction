execute at @s positioned ~ ~-2 ~ unless block ~ ~ ~ #air run playsound item.trident.hit_ground block @a[distance=..7] ~ ~ ~ 1 1.5 1
execute at @s positioned ~ ~-2 ~ unless block ~ ~ ~ #air run return run tag @s add stop


scoreboard players set @s magic12-2 30
function items:skills/magic/12/move2
execute at @s run particle dust{color:16580434,scale:1} ~ ~ ~ 0.2 2 0.2 2 20