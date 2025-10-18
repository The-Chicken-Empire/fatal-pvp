tag @s add magic43tmp

execute at @s anchored eyes positioned ^ ^ ^3 summon marker run function items:skills/magic/43/summonmarker
execute at @s run playsound entity.puffer_fish.blow_up hostile @s ~ ~ ~ 1 1 1

tag @s add magic43tmp
scoreboard players set $ct main 180
function api:ct/mainhand