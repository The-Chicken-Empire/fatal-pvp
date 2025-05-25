bossbar set minecraft:gametimer players @a
bossbar set minecraft:gametimer visible true
execute store result bossbar minecraft:gametimer max run scoreboard players get $timelimit settings
execute store result bossbar minecraft:gametimer value run scoreboard players get $timer main
execute if score $ifstar settings matches 1 run function system:phase/phase2/startwithstar
execute if score $ifstar settings matches 0 run bossbar set gametimer name [{"color":"red","italic":false,"text":"範囲収縮"},{"color":"white","italic":false,"text":"まで"},{"bold":true,"italic":false,"score":{"name":"$timersec","objective":"main"}},{"color":"white","text":"秒"}]
execute if score $ifstar settings matches 0 run scoreboard players set $nostar main 1
scoreboard players operation $timer main = $timelimit settings
title @a title [{"color":"red","text":" START! "}]
execute as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 2
execute as @a[tag=player] run scoreboard players operation @s hp = @s maxhp
execute as @a[tag=player] run scoreboard players operation @s mp = @s maxmp
scoreboard players set @a[tag=player] eng 0
effect clear @a[tag=player]

scoreboard players set $phase main 3