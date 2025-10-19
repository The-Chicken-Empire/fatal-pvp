scoreboard players operation @s mp -= @s mpcost

execute at @s run playsound entity.snowball.throw player @a ~ ~ ~ 1 0.5 0

tag @s add magic40tmp

execute store result score $m40x tmp run data get entity @s Pos.[0] 10000
execute store result score $m40y tmp run data get entity @s Pos.[1] 10000
execute store result score $m40z tmp run data get entity @s Pos.[2] 10000
execute at @s positioned ^ ^ ^-1 summon marker run function items:skills/magic/40/summonmarker

scoreboard players operation $m40x tmp -= $m40x2 tmp
scoreboard players operation $m40y tmp -= $m40y2 tmp
scoreboard players operation $m40z tmp -= $m40z2 tmp

execute store result storage cpvp:magic40 x double 0.00015 run scoreboard players get $m40x tmp
execute store result storage cpvp:magic40 y double 0.00015 run scoreboard players get $m40y tmp
execute store result storage cpvp:magic40 z double 0.00015 run scoreboard players get $m40z tmp

execute at @s anchored eyes positioned ^ ^ ^ run summon item ~ ~ ~ {Tags:["magic40tmp2"],Item:{id:"minecraft:barrier",count:1}}
execute as @e[tag=magic40tmp2] run function items:skills/magic/40/summonitem

data remove storage cpvp:magic40 x
data remove storage cpvp:magic40 y
data remove storage cpvp:magic40 z
scoreboard players reset $m40x
scoreboard players reset $m40y
scoreboard players reset $m40z
scoreboard players reset $m40x2
scoreboard players reset $m40y2
scoreboard players reset $m40z2
tag @s remove magic40tmp
scoreboard players set $ct main 240
function api:ct/mainhand