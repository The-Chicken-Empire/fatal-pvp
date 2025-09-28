execute anchored eyes positioned ^ ^ ^ run tp 0-0-0-0-0 ~ ~ ~ ~ ~
scoreboard players set #counter counter 1000
execute as 0-0-0-0-0 at @s run function items:skills/magic/36/s1/rec
scoreboard players reset #counter counter

execute summon item_display run function items:skills/magic/36/s2/summon


execute at 0-0-0-0-0 rotated 0 90 run tp @e[tag=magic36this,limit=1] ~ ~ ~ ~ ~
execute at 0-0-0-0-0 unless block ~0.2 ~ ~ #main:air rotated 270 0 run tp @e[tag=magic36this,limit=1] ~ ~ ~ ~ ~
execute at 0-0-0-0-0 unless block ~-0.2 ~ ~ #main:air rotated 90 0 run tp @e[tag=magic36this,limit=1] ~ ~ ~ ~ ~
execute at 0-0-0-0-0 unless block ~ ~ ~-0.2 #main:air rotated 0 0 run tp @e[tag=magic36this,limit=1] ~ ~ ~ ~ ~
execute at 0-0-0-0-0 unless block ~ ~ ~0.2 #main:air rotated 180 0 run tp @e[tag=magic36this,limit=1] ~ ~ ~ ~ ~
execute at 0-0-0-0-0 unless block ~ ~0.2 ~ #main:air rotated 0 -90 run tp @e[tag=magic36this,limit=1] ~ ~ ~ ~ ~

execute as @e[tag=magic36tmp] at @s facing entity @e[tag=magic36this,limit=1] feet run tp @s ~ ~ ~ ~ ~


tag @e[tag=magic36this,limit=1] remove magic36this

tag @e[tag=magic36tmp,limit=1] remove magic36unready
tag @e[tag=magic36tmp,limit=1] remove magic36tmp



tag @s remove magic36owner





execute at 0-0-0-0-0 run playsound block.enchantment_table.use master @a ~ ~ ~ 1 1
execute at 0-0-0-0-0 run playsound item.trident.thunder master @a ~ ~ ~ 1 1


tp 0-0-0-0-0 0 0 0