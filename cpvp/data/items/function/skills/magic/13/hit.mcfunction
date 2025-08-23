scoreboard players operation @s attackerdata = @e[tag=magic13tmp5,limit=1] owner
scoreboard players set @s damagetaken 30
tag @s add physicaldamage
tag @s add rangedamage

function damage:atkercheck

execute as @e[tag=magic13tmp5,limit=1] at @s run particle glow ~ ~ ~ 0.2 0.2 0.2 0.5 8 normal
scoreboard players set $tmp tmp 1
kill @e[tag=magic13tmp5]