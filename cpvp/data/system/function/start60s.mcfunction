bossbar set minecraft:timer visible true
scoreboard players set $timer main 1200
scoreboard players set $phase main 1
bossbar set minecraft:timer players @a
bossbar set minecraft:timer color white
bossbar set minecraft:timer max 1200
tellraw @a {"color":"white","text":"ゲーム開始まで60秒に設定されました"}