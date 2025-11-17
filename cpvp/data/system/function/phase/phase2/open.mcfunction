scoreboard players operation $gametimer main = $timelimit settings
bossbar set minecraft:gametimer players @a
bossbar set minecraft:gametimer visible true
execute store result bossbar minecraft:gametimer max run scoreboard players get $timelimit settings
execute store result bossbar minecraft:gametimer value run scoreboard players get $timer main
bossbar set gametimer name [{"color":"red","italic":false,"text":"範囲収縮"},{"color":"white","italic":false,"text":"まで"},{"bold":true,"italic":false,"score":{"name":"$timersec","objective":"main"}},{"color":"white","text":"秒"}]

scoreboard players operation $timer main = $timelimit settings
title @a title [{"color":"red","text":" START! "}]
execute as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 2
execute as @a[tag=player] run scoreboard players operation @s hp = @s maxhp
execute as @a[tag=player] run scoreboard players operation @s mp = @s maxmp
scoreboard players set @a[tag=player] eng 0
effect clear @a[tag=player]

scoreboard players set $phase main 3

#固有item用
function system:reset/start
execute as @a run function items:triggers/gamestart/check