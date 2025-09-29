tag @s add magic1tmp4
scoreboard players set $tmp tmp 0
execute as @e[tag=magic1ct] if score @s owner = @e[tag=magic1tmp3,limit=1] markerid if score @s target = @e[tag=magic1tmp4,limit=1] entitydata run scoreboard players add $tmp tmp 1
execute if score $tmp tmp matches 1.. run tag @s remove magic1tmp4
execute if score $tmp tmp matches 1.. run return run scoreboard players reset $tmp tmp
scoreboard players reset $tmp tmp

tag @s add magicdamage
tag @s add rangedamage
scoreboard players set @s damagetaken 50
scoreboard players operation @s attackerdata = @a[tag=magic1atker] playerdata
execute at @s run playsound entity.firework_rocket.blast ambient @s ~ ~ ~ 1 1.5 1
function damage:atkercheck

execute summon marker run function items:skills/magic/1/summonmarker2
tag @s remove magic1tmp4