execute at @s run playsound entity.player.burp player @s ~ ~ ~ 1 1 1
scoreboard players set $heal main 200
tag @s add healer
function api:heal/

execute store result score $tmp random run random value 1..3
execute if score $tmp random matches 1 run function items:skills/food/2/1
execute if score $tmp random matches 2 run function items:skills/food/2/2
execute if score $tmp random matches 3 run function items:skills/food/2/3

#必須項目。食事CT
execute if score $tmp random matches 2 run return run function effects:system/gain/ {id:33,level:1,duration:1000}
function effects:system/gain/ {id:33,level:1,duration:1200}