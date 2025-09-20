tag @s add magic31tmp
scoreboard players operation @s mp -= @s mpcost


execute at @s anchored eyes positioned ^ ^ ^ summon marker run function items:skills/magic/31/summonmarker
execute at @s run playsound entity.guardian.death hostile @s ~ ~ ~ 1 2 1
execute as @e[tag=magic31victimtmp] run function items:skills/magic/31/hit
tag @e[tag=magic31victimtmp] remove magic31victimtmp

scoreboard players set $ct main 30
function api:ct/mainhand
tag @s remove magic31tmp