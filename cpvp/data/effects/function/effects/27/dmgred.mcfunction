scoreboard players set $tmp tmp 0
function effects:system/pick/ {id:27}
execute store result score $tmp tmp run data get storage effect: targeteffect.level
execute if score $tmp tmp matches ..0 run return run scoreboard players reset $tmp tmp

scoreboard players operation $tmp tmp *= $5 main

scoreboard players operation @e[tag=victim,limit=1] damagetaken -= $tmp tmp
scoreboard players reset $tmp tmp