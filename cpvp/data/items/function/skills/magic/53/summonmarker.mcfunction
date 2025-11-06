tag @s add magic53tmpmarker

execute store result score $m53x2 tmp run data get entity @s Pos.[0] 10000
execute store result score $m53y2 tmp run data get entity @s Pos.[1] 10000
execute store result score $m53z2 tmp run data get entity @s Pos.[2] 10000

kill @s