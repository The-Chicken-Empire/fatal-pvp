

tag @s add magic51tmp

execute at @s anchored eyes positioned ^ ^ ^ summon marker run function items:skills/magic/51/summonmarker
execute at @s run playsound entity.allay.hurt player @a ~ ~ ~ 1 1.2 0 

tag @s remove magic51tmp
scoreboard players set $ct main 280
function api:ct/mainhand