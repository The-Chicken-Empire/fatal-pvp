bossbar set minecraft:timer visible true
scoreboard players set $starttimer main 3600
scoreboard players set $phase main 1
bossbar set minecraft:timer players @a
bossbar set minecraft:timer color white
bossbar set minecraft:timer max 3600
tellraw @a {"color":"white","text":"ゲーム開始まで180秒に設定されました"}