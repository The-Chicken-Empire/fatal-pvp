tag @s add magic25tmp

execute at @s run playsound entity.wolf_big.death neutral @a[distance=..16] ~ ~ ~ 1 0 0
execute at @s summon marker run function items:skills/magic/25/summonmarker

tag @s remove magic25tmp

scoreboard players set $ct main 320
function api:ct/mainhand