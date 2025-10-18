tag @s add magic40tmpmarker

execute store result score $m40x2 tmp run data get entity @s Pos.[0] 10000
execute store result score $m40y2 tmp run data get entity @s Pos.[1] 10000
execute store result score $m40z2 tmp run data get entity @s Pos.[2] 10000

kill @s