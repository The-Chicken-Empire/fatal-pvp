scoreboard players set @e[tag=cp.this] counter 0
scoreboard players set @e[tag=cp.this] counter2 0
scoreboard players add @e[tag=cp.this,limit=1] counter3 1




execute at @s run tp @s @s
execute at @s run tp @s ~ ~0.0001 ~
function api:motion/rotation_usiro {power:10}
tag @s remove magic28_sugoi2
tag @s add magic28_sugoi
attribute @s jump_strength base set -9999999
attribute @s fall_damage_multiplier base set -9999999
execute at @s run function items:skills/magic/28/skill2/down/particle
execute at @s as @e[tag=playing,distance=..2.5] unless score @s teamscore = @a[tag=cp.owner,limit=1] teamscore run tag @s add cp.hit
execute as @e[tag=cp.hit] at @s run function items:skills/magic/28/skill2/down/hit
execute at @s run function items:skills/magic/28/skill2/down/hit


tag @e[tag=cp.this] remove cp.this
tag @s remove cp.owner