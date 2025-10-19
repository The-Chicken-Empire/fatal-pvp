tag @s add physicaldamage
tag @s add rangedamage

scoreboard players set @s damagetaken 30
scoreboard players operation @s attackerdata = @e[tag=magic41bullettmp,limit=1] owner

function damage:atkercheck

kill @e[tag=magic41bullettmp]