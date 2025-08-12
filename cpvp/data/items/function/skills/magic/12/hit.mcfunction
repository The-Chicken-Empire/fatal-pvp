execute summon marker run function items:skills/magic/12/damagect

scoreboard players set @s damagetaken 150
scoreboard players set @s penetrate 50
tag @s add physicaldamage
tag @s add rangedamage
scoreboard players operation @s attackerdata = @e[tag=magic12tmp,limit=1] owner
function damage:atkercheck