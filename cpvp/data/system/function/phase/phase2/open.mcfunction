scoreboard players operation $gametimer main = $timelimit settings
bossbar set minecraft:gametimer players @a
bossbar set minecraft:gametimer visible true
execute store result bossbar minecraft:gametimer max run scoreboard players get $timelimit settings
execute store result bossbar minecraft:gametimer value run scoreboard players get $timer main
bossbar set gametimer name [{"color":"red","italic":false,"text":"範囲収縮"},{"color":"white","italic":false,"text":"まで"},{"bold":true,"italic":false,"score":{"name":"$timersec","objective":"main"}},{"color":"white","text":"秒"}]

execute as @a[tag=aliveing] run function system:phase/phase2/deletemob

tag @a[tag=aliving] add alive
tag @a[tag=aliving] remove aliving
scoreboard players operation $timer main = $timelimit settings
title @a title [{"color":"red","text":" START! "}]
execute as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 2
execute as @a[tag=alive] run scoreboard players operation @s hp = @s maxhp
execute as @a[tag=alive] run scoreboard players operation @s mp = @s maxmp
scoreboard players set @a[tag=alive] eng 0
effect clear @a[tag=alive]

scoreboard players set $phase main 3

#固有item用
function system:reset/reset
execute as @a run function items:triggers/gamestart/check
function system:phase/phase2/maps