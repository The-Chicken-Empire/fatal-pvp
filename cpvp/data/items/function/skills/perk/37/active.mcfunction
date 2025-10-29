execute at @s run playsound block.note_block.bell block @s ~ ~ ~ 1 2 1
execute at @s run particle note ~ ~2 ~ 0 0 0 0.1 1 normal

tag @s add healer
scoreboard players operation $mr main = @e[tag=victim,limit=1] damagetaken
scoreboard players operation $mr main *= $10 main
function api:mr/