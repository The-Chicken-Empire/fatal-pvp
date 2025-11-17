bossbar set minecraft:timer visible true
scoreboard players set $starttimer main 2400
scoreboard players set $phase main 1
bossbar set minecraft:timer players @a
bossbar set minecraft:timer color white
bossbar set minecraft:timer max 2400
tellraw @a {"color":"white","text":"ゲーム開始まで120秒に設定されました"}