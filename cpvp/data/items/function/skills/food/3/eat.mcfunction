tag @s add eat

execute at @s run playsound entity.player.burp player @s ~ ~ ~ 1 1 1
scoreboard players set $heal main 60
tag @s add healer
function api:heal/

#スタック30減少
function effects:system/pick/ {id:46}
scoreboard players set $tmp tmp 0
execute store result score $tmp tmp run data get storage effect: targeteffect.level
execute if score $tmp tmp matches 1.. run function items:skills/food/3/e46
scoreboard players reset $tmp tmp

#必須項目。食事CT
function effects:system/gain/ {id:33,level:1,duration:440}

tag @s remove eat