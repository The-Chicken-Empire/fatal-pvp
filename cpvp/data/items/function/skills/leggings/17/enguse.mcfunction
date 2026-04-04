tag @s add leg17engtmp

#ターゲット
execute as @a[tag=playing,distance=..20] unless score @s teamscore = @a[tag=leg17engtmp,limit=1] teamscore run tag @s add leg17engvictim
execute as @r[tag=leg17engvictim,limit=1] run tag @s add leg17engvictim2
tag @a[tag=leg17engvictim] remove leg17engvictim

#充電奪取
execute as @a[tag=leg17engvictim2] if score @s eng matches 5.. run scoreboard players set $tmp2 tmp 5
execute as @a[tag=leg17engvictim2] if score @s eng matches ..4 run scoreboard players operation $tmp2 tmp = @s eng
scoreboard players operation @s eng += $tmp2 tmp
scoreboard players remove @a[tag=leg17engvictim2] eng 5
execute if score @s eng > @s maxeng run scoreboard players operation @s eng = @s maxeng
execute as @a[tag=leg17engvictim2] if score @s eng matches ..0 run scoreboard players set @s eng 0
scoreboard players reset $tmp2 tmp

#演出
execute as @a[tag=leg17engvictim2] at @s run function items:skills/leggings/17/enguseparticle
execute as @a[tag=leg17engvictim2] at @s run playsound entity.lightning_bolt.thunder weather @a ~ ~ ~ 0.6 2 0
execute as @a[tag=leg17engvictim2] at @s run playsound entity.firework_rocket.twinkle weather @a ~ ~ ~ 0.6 0.6 0


execute store result storage cpvp:effect54 duration int 20 run scoreboard players get @s engcost
data modify storage cpvp:effect54 level set value 3

tag @s add buffer
execute as @e[tag=leg17engvictim2,limit=1] run function effects:system/gain/ with storage cpvp:effect54


tag @a[tag=leg17engtmp] remove leg17engtmp
tag @a[tag=leg17engvictim2] remove leg17engvictim2
data remove storage cpvp:effect54 duration
data remove storage cpvp:effect54 level
scoreboard players reset $tmp tmp
scoreboard players reset $tmp2 tmp