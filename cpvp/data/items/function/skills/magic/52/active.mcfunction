

tag @s add magic52tmp

execute rotated ~ 0 anchored feet positioned ^ ^ ^3 summon marker run function items:skills/magic/52/summonmarker
execute unless entity @e[tag=magic52coretmp] run return run function items:skills/magic/52/fail
tag @e[tag=magic52coretmp] remove magic52coretmp
tag @s remove magic52tmp

scoreboard players operation @s mp -= @s mpcost
scoreboard players set $ct main 240
function api:ct/mainhand