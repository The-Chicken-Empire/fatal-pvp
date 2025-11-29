
tag @s add magic15tmp

execute at @s anchored eyes positioned ^ ^ ^ summon marker run function items:skills/magic/15/summonmarker
execute at @s anchored eyes positioned ^ ^ ^ positioned ^ ^ ^ summon marker run function items:skills/magic/15/summonmarker2
execute at @s run playsound entity.wither.ambient hostile @a ~ ~ ~ 1 2 0
execute at @s run particle portal ~ ~ ~ 0.3 0.5 0.3 0.4 30 normal

tag @s remove magic15tmp

scoreboard players set $ct main 360
function api:ct/mainhand