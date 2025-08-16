execute if score $base entitydata matches 2147483647 run scoreboard players set $base entitydata 1
scoreboard players add $base entitydata 1
execute as @e if score @s entitydata = $base entitydata run return run function system:entitydata/mobentitydata
execute store result storage cpvp:tmp tmp.check byte 1 run scoreboard players get $base entitydata
scoreboard players set $check tmp 0
function system:entitydata/playercheck with storage cpvp:tmp tmp
execute if score $check tmp matches 1 run return run function system:entitydata/playerentitydata
scoreboard players reset $check tmp


scoreboard players operation @s entitydata = $base entitydata