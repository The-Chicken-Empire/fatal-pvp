function effects:system/pick/ {id:1}
scoreboard players set $tmp tmp 0
execute store result score $tmp tmp run data get storage effect: targeteffect.level
execute if score $tmp tmp matches 2.. run return run scoreboard players reset $tmp tmp

tag @s add buffer
function effects:system/gain/ {id:1,level:1,duration:20}