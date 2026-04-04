scoreboard players reset $tmp2 tmp
function effects:system/pick/ {id:40}
execute store result score $tmp2 tmp run data get storage effect: targeteffect.level
scoreboard players operation $tmp tmp += $tmp2 tmp