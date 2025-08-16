tp @s ^ ^ ^0.1

#hit
function items:skills/bullet/hitcheck

#他の色々
execute unless block ~ ~ ~ #main:air run return run kill @s
scoreboard players add @s bulletparticle 1
execute if score @s bulletparticle matches 6.. run function items:skills/bullet/bulletparticle
scoreboard players remove @s bulletrange 1
execute if score @s bulletrange matches ..0 run return run kill @s
scoreboard players remove @s bulletspeedtmp 1
execute if score @s bulletspeedtmp matches 1.. at @s run function items:skills/bullet/bullettick2