scoreboard players operation @s mp -= @s mpcost
scoreboard players set $ct main 240

function api:ct/mainhand


execute anchored eyes positioned ^ ^ ^ run tp 0-0-0-0-0 ~ ~ ~ ~ ~
scoreboard players set #counter counter 1000
execute as 0-0-0-0-0 at @s run function items:skills/magic/36/s1/rec
scoreboard players reset #counter counter
execute summon item_display run function items:skills/magic/36/s1/summon

execute at 0-0-0-0-0 rotated 0 90 run tp @e[tag=magic36tmp,limit=1] ~ ~ ~ ~ ~

execute at 0-0-0-0-0 unless block ~0.2 ~ ~ #main:air rotated 270 0 run tp @e[tag=magic36tmp,limit=1] ~ ~ ~ ~ ~
execute at 0-0-0-0-0 unless block ~-0.2 ~ ~ #main:air rotated 90 0 run tp @e[tag=magic36tmp,limit=1] ~ ~ ~ ~ ~
execute at 0-0-0-0-0 unless block ~ ~ ~-0.2 #main:air rotated 0 0 run tp @e[tag=magic36tmp,limit=1] ~ ~ ~ ~ ~
execute at 0-0-0-0-0 unless block ~ ~ ~0.2 #main:air rotated 180 0 run tp @e[tag=magic36tmp,limit=1] ~ ~ ~ ~ ~
execute at 0-0-0-0-0 unless block ~ ~0.2 ~ #main:air rotated 0 -90 run tp @e[tag=magic36tmp,limit=1] ~ ~ ~ ~ ~


tag @e[tag=magic36tmp,limit=1] remove magic36tmp


tag @s add magic36owner


execute summon item_display run function items:skills/magic/36/s1/summon2


execute at 0-0-0-0-0 rotated 0 90 run tp @e[tag=magic36tmp,limit=1] ^ ^ ^3 ~ ~

execute at 0-0-0-0-0 unless block ~-0.2 ~ ~ #main:air rotated 270 0 run tp @e[tag=magic36tmp,limit=1] ^ ^ ^3 ~ ~
execute at 0-0-0-0-0 unless block ~0.2 ~ ~ #main:air rotated 90 0 run tp @e[tag=magic36tmp,limit=1] ^ ^ ^3 ~ ~
execute at 0-0-0-0-0 unless block ~ ~ ~-0.2 #main:air rotated 0 0 run tp @e[tag=magic36tmp,limit=1] ^ ^ ^3 ~ ~
execute at 0-0-0-0-0 unless block ~ ~ ~0.2 #main:air rotated 180 0 run tp @e[tag=magic36tmp,limit=1] ^ ^ ^3 ~ ~
execute at 0-0-0-0-0 unless block ~ ~-0.2 ~ #main:air rotated 0 -90 run tp @e[tag=magic36tmp,limit=1] ^ ^ ^3 ~ ~




tag @e[tag=magic36tmp,limit=1] remove magic36tmp

tag @s remove magic36owner

execute at 0-0-0-0-0 run playsound block.enchantment_table.use master @a ~ ~ ~ 1 1
execute at 0-0-0-0-0 run playsound item.trident.thunder master @a ~ ~ ~ 1 1
playsound block.enchantment_table.use master @s ~ ~ ~ 1 1
playsound item.trident.thunder master @s ~ ~ ~ 1 1
tp 0-0-0-0-0 0 0 0