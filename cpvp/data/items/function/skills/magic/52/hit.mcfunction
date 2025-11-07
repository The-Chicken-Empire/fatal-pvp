scoreboard players set @s damagetaken 30
tag @s add magicdamage
tag @s add meleedamage
scoreboard players operation @s attackerdata = @e[tag=magic52tmp2,limit=1] owner

tag @s add nodamagehop
execute at @s run function api:motion/rotation_and_y {power:12,y:-90}

function damage:atkercheck