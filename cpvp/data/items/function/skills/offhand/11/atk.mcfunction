scoreboard players add #counter counter 1
execute unless entity @s[tag=offhand11.phy] if entity @e[tag=victim,tag=physicaldamagetmp,limit=1] run scoreboard players add #counter counter 1
execute unless entity @s[tag=offhand11.mag] if entity @e[tag=victim,tag=magicdamagetmp,limit=1] run scoreboard players add #counter counter 1
execute unless entity @s[tag=offhand11.melee] if entity @e[tag=victim,tag=meleedamagetmp,limit=1] run scoreboard players add #counter counter 1
execute unless entity @s[tag=offhand11.range] if entity @e[tag=victim,tag=rangedamagetmp,limit=1] run scoreboard players add #counter counter 1
execute unless entity @s[tag=offhand11.special] if entity @e[tag=victim,tag=specialdamagetmp,limit=1] run scoreboard players add #counter counter 1


scoreboard players operation @e[tag=victim,limit=1] damagetaken *= #counter counter
scoreboard players operation @e[tag=victim,limit=1] damagetaken /= $2 main

scoreboard players reset #counter




tag @s remove offhand11.phy
tag @s remove offhand11.mag
tag @s remove offhand11.melee
tag @s remove offhand11.range
tag @s remove offhand11.special

execute if entity @e[tag=victim,tag=physicaldamagetmp,limit=1] run tag @s add offhand11.phy
execute if entity @e[tag=victim,tag=magicdamagetmp,limit=1] run tag @s add offhand11.mag
execute if entity @e[tag=victim,tag=meleedamagetmp,limit=1] run tag @s add offhand11.melee
execute if entity @e[tag=victim,tag=rangedamagetmp,limit=1] run tag @s add offhand11.range
execute if entity @e[tag=victim,tag=specialdamagetmp,limit=1] run tag @s add offhand11.special
