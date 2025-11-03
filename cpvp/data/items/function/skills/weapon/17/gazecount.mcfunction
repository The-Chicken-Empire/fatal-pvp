#音と視覚効果
function effects:system/pick/ {id:48}
execute store result score $tmp tmp run data get storage effect: targeteffect.level

scoreboard players operation $weapon17 tmp += $tmp tmp
scoreboard players reset $tmp tmp