scoreboard players operation @s mp -= @s mpcost
function api:motion/rotation_and_y {power:12,y:-60}
execute at @s summon marker run function items:skills/boots/5/summonmarker
scoreboard players set $ct main 200
function api:ct/boots
tag @s remove boots5tmp