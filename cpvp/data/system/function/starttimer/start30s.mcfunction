bossbar set minecraft:timer visible true
scoreboard players set $timer main 600
scoreboard players set $phase main 1
bossbar set minecraft:timer players @a
bossbar set minecraft:timer color white
bossbar set minecraft:timer max 600
tellraw @a {"color":"white","text":"ゲーム開始まで30秒に設定されました"}