
scoreboard players set $ct main 480
function api:ct/mainhand
execute at @s run function items:skills/magic/28/skill2/down/particle
execute at @s run tp @s @s
execute at @s run tp @s ~ ~0.0001 ~
function api:motion/rotation_usiro {power:13}

tag @s add cp.owner
execute summon marker run function items:skills/magic/28/skill1/summon
tag @s remove cp.owner

tag @s remove magic28_sugoi2
tag @s add magic28_sugoi
attribute @s jump_strength base set -9999999
attribute @s fall_damage_multiplier base set -9999999

