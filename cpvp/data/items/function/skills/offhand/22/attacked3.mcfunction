scoreboard players reset $tmp random
execute store result score $tmp random run random value 1..100
execute unless score $tmp random matches 26..
scoreboard players operation $mr main = @s damagetaken
scoreboard players operation $mr main = $3 main
scoreboard players operation $mr main = $10 main
function api:mr/
scoreboard players reset $tmp random

execute at @s run playsound block.trial_spawner.spawn_item_begin block @s ~ ~ ~ 1 2 1