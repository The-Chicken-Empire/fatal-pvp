scoreboard players set @s offhand9 0

scoreboard players operation #mr main = @s maxhp
scoreboard players operation #mr main -= @s hp

execute unless score #mr main matches 1.. run return fail

scoreboard players operation $mr main *= $10 main
function api:mr/

scoreboard players operation $tmp2 tmp = @s mr
execute at @s run playsound block.note_block.pling music @s ~ ~ ~ 1 1.2 1
execute at @s run particle note ~ ~2 ~ 0 0 0 0.1 1 normal