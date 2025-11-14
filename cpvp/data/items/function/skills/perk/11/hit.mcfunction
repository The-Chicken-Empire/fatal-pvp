scoreboard players set $tmp tmp 0
function effects:system/pick/ {id:27}
execute store result score $tmp tmp run data get storage effect: targeteffect.level

execute if score $tmp tmp matches 0 run function items:skills/perk/11/crystal
execute if score $tmp tmp matches 1.. if score $daytime main matches 0..12000 run function items:skills/perk/11/fire
execute if score $tmp tmp matches 1.. if score $daytime main matches 12001..23000 run function items:skills/perk/11/wither
execute if score $tmp tmp matches 1.. if score $daytime main matches 23001..24000 run function items:skills/perk/11/fire

scoreboard players reset $tmp tmp