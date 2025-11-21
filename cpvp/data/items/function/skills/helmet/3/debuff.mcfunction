tag @s add helm3tmp

#ここに損傷追加
scoreboard players set $tmp tmp 0
scoreboard players set $tmp2 tmp 0
function effects:system/pick/ {id:47}
execute store result score $tmp tmp run data get storage effect: targeteffect.level
execute if score $tmp tmp matches 1.. run scoreboard players add $tmp2 tmp 1


scoreboard players reset $tmp tmp

data modify storage cpvp:helm3 id set value 5
data modify storage cpvp:helm3 target set value debuff
data modify storage cpvp:helm3 duration_add set value 0
data modify storage cpvp:helm3 duration_multiply set value 1
data modify storage cpvp:helm3 type set value passive
execute store result storage cpvp:helm3 level int 1 run scoreboard players get $tmp2 tmp

function effects:effect_modifier_gain with storage cpvp:helm3

data remove storage cpvp:helm3 level
scoreboard players reset $tmp2 tmp