tag @s add leg17engtmp

execute as @a[tag=playing,distance=..20] unless score @s teamscore = @a[tag=leg17engtmp,limit=1] teamscore run tag @s add leg17engvictim
execute as @r[tag=leg17engvictim,limit=1] run tag @s add leg17engvictim2
tag @a[tag=leg17engvictim] remove leg17engvictim

execute as @a[tag=leg17engvictim2] if score @s eng matches 5.. run scoreboard players set $tmp2 tmp 5
execute as @a[tag=leg17engvictim2] if score @s eng matches ..4 run scoreboard players operation $tmp2 tmp = @s eng
scoreboard players operation @s eng += $tmp2 tmp
scoreboard players remove @a[tag=leg17engvictim2] eng 5
execute if score @s eng > @s maxeng run scoreboard players operation @s eng = @s maxeng
execute as @a[tag=leg17engvictim2] if score @s eng matches ..0 run scoreboard players set @s eng 0
scoreboard players reset $tmp2 tmp

execute as @a[tag=leg17engvictim2] at @s run function items:skills/leggings/17/enguseparticle
execute as @a[tag=leg17engvictim2] at @s run playsound entity.lightning_bolt.thunder weather @a ~ ~ ~ 0.6 2 0


execute as @e[tag=leg17engvictim2] run function effects:system/pick/ {id:54}
scoreboard players set $tmp tmp 0
execute store result score $tmp tmp run data get storage effect: targeteffect.level
execute if score $tmp tmp matches 1.. run tag @a[tag=leg17engvictim2] remove leg17engvictim2
execute if score $tmp tmp matches 1.. run tag @a[tag=leg17engtmp] remove leg17engtmp
execute if score $tmp tmp matches 1.. run return run scoreboard players reset $tmp tmp

scoreboard players operation $tmp2 tmp = @s engcost
scoreboard players operation $tmp2 tmp *= $4 main

execute as @e[tag=leg17engvictim2] run function effects:system/pick/ {id:53}
scoreboard players set $tmp tmp 0
execute store result score $tmp tmp run data get storage effect: targeteffect.level

scoreboard players operation $tmp tmp += $tmp2 tmp

execute store result storage cpvp:effect53 level int 1 run scoreboard players get $tmp tmp

tag @s add buffer
execute as @e[tag=leg17engvictim2,limit=1] run function effects:system/gain/ with storage cpvp:effect53


tag @a[tag=leg17engtmp] remove leg17engtmp
tag @a[tag=leg17engvictim2] remove leg17engvictim2
data remove storage cpvp:effect53 level
scoreboard players reset $tmp tmp
scoreboard players reset $tmp2 tmp