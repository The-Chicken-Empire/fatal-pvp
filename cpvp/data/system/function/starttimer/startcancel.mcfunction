scoreboard players set $phase main 0
scoreboard players reset $startimer main
bossbar set minecraft:timer visible false
tellraw @a {"color":"white","text":"開始がキャンセルされました"}