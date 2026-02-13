#これが弓を受けた時のデータ
data modify storage cpvp:getbowdata id set value 4
function items:skills/gun/arrow/data

execute store result score $tmp tmp run random value 1..100
execute if score $tmp tmp matches 51.. run tag @e[tag=buffer] remove buffer
execute if score $tmp tmp matches 51.. run return run scoreboard players reset $tmp tmp
scoreboard players reset $tmp tmp

execute as @e[tag=buffer] at @s run playsound entity.blaze.ambient hostile @s ~ ~ ~ 1 2 1
execute at @s run playsound minecraft:item.firecharge.use player @s ~ ~ ~ 1 0 1
function effects:system/gain/ {duration:60,level:2,id:40}
