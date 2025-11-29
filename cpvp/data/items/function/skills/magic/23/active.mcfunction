tag @s add magic23tmp


execute at @s summon marker run function items:skills/magic/23/summoncenter
execute at @s anchored eyes positioned ^ ^ ^ summon marker run function items:skills/magic/23/summonmarker
execute at @s run playsound entity.breeze.charge block @a[distance=..15] ~ ~ ~ 1 0.8 0


scoreboard players set $ct main 400
function api:ct/mainhand
tag @s remove magic23tmp