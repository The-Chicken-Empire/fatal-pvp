scoreboard players set $tmp tmp 0

scoreboard players operation $tmp tmp = @s maxeng
scoreboard players operation $tmp tmp -= @s eng

execute if score $tmp tmp matches 5.. run function items:skills/magic/59/normal
execute unless score $tmp tmp matches 5.. run function items:skills/magic/59/over

execute at @s run playsound entity.player.hurt_sweet_berry_bush player @s ~ ~ ~ 1 1 1
execute at @s run playsound entity.player.hurt_sweet_berry_bush player @s ~ ~ ~ 1 1 1
execute at @s run particle dust{color:8716288,scale:1} ~ ~1 ~ 0.3 0.6 0.3 0.3 12 normal
#ct
scoreboard players set $ct main 260
function api:ct/mainhand