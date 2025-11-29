

execute at @s run playsound entity.snowball.throw player @a ~ ~ ~ 1 0.8 0

tag @s add magic53tmp

execute store result score $m53x tmp run data get entity @s Pos.[0] 10000
execute store result score $m53y tmp run data get entity @s Pos.[1] 10000
execute store result score $m53z tmp run data get entity @s Pos.[2] 10000
execute at @s positioned ^ ^ ^-1 summon marker run function items:skills/magic/53/summonmarker

scoreboard players operation $m53x tmp -= $m53x2 tmp
scoreboard players operation $m53y tmp -= $m53y2 tmp
scoreboard players operation $m53z tmp -= $m53z2 tmp

execute store result storage cpvp:magic53 x double 0.00018 run scoreboard players get $m53x tmp
execute store result storage cpvp:magic53 y double 0.00018 run scoreboard players get $m53y tmp
execute store result storage cpvp:magic53 z double 0.00018 run scoreboard players get $m53z tmp

execute at @s anchored eyes positioned ^ ^ ^ run summon item ~ ~ ~ {Tags:["magic53tmp2"],Item:{id:"minecraft:firework_star",count:1}}
execute as @e[tag=magic53tmp2] run function items:skills/magic/53/summonitem

data remove storage cpvp:magic53 x
data remove storage cpvp:magic53 y
data remove storage cpvp:magic53 z
scoreboard players reset $m53x
scoreboard players reset $m53y
scoreboard players reset $m53z
scoreboard players reset $m53x2
scoreboard players reset $m53y2
scoreboard players reset $m53z2
tag @s remove magic53tmp
scoreboard players set $ct main 380
function api:ct/mainhand