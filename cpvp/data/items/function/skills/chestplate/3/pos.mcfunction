#角度
execute at @s run tp @s ~ ~ ~

execute store result score $tmp tmp run random value 1..90

execute if score $tmp tmp matches 45.. at @s run tp @s ~ ~ ~ ~ ~-45
execute if score $tmp tmp matches 45.. run scoreboard players remove $tmp tmp 45
execute if score $tmp tmp matches 23.. at @s run tp @s ~ ~ ~ ~ ~-23
execute if score $tmp tmp matches 23.. run scoreboard players remove $tmp tmp 23
execute if score $tmp tmp matches 12.. at @s run tp @s ~ ~ ~ ~ ~-12
execute if score $tmp tmp matches 12.. run scoreboard players remove $tmp tmp 12
execute if score $tmp tmp matches 6.. at @s run tp @s ~ ~ ~ ~ ~-6
execute if score $tmp tmp matches 6.. run scoreboard players remove $tmp tmp 6
execute if score $tmp tmp matches 3.. at @s run tp @s ~ ~ ~ ~ ~-3
execute if score $tmp tmp matches 3.. run scoreboard players remove $tmp tmp 3
execute if score $tmp tmp matches 2.. at @s run tp @s ~ ~ ~ ~ ~-2
execute if score $tmp tmp matches 2.. run scoreboard players remove $tmp tmp 2
execute if score $tmp tmp matches 1.. at @s run tp @s ~ ~ ~ ~ ~-1
execute if score $tmp tmp matches 1.. run scoreboard players remove $tmp tmp 1

scoreboard players reset $tmp tmp

execute store result score $tmp tmp run random value 1..180
execute if score $tmp tmp matches 90.. at @s run tp @s ~ ~ ~ ~90 ~
execute if score $tmp tmp matches 90.. run scoreboard players remove $tmp tmp 90
execute if score $tmp tmp matches 45.. at @s run tp @s ~ ~ ~ ~45 ~
execute if score $tmp tmp matches 45.. run scoreboard players remove $tmp tmp 45
execute if score $tmp tmp matches 23.. at @s run tp @s ~ ~ ~ ~23 ~
execute if score $tmp tmp matches 23.. run scoreboard players remove $tmp tmp 23
execute if score $tmp tmp matches 12.. at @s run tp @s ~ ~ ~ ~12 ~
execute if score $tmp tmp matches 12.. run scoreboard players remove $tmp tmp 12
execute if score $tmp tmp matches 6.. at @s run tp @s ~ ~ ~ ~6 ~
execute if score $tmp tmp matches 6.. run scoreboard players remove $tmp tmp 6
execute if score $tmp tmp matches 3.. at @s run tp @s ~ ~ ~ ~3 ~
execute if score $tmp tmp matches 3.. run scoreboard players remove $tmp tmp 3
execute if score $tmp tmp matches 2.. at @s run tp @s ~ ~ ~ ~2 ~
execute if score $tmp tmp matches 2.. run scoreboard players remove $tmp tmp 2
execute if score $tmp tmp matches 1.. at @s run tp @s ~ ~ ~ ~1 ~
execute if score $tmp tmp matches 1.. run scoreboard players remove $tmp tmp 1

scoreboard players reset $tmp tmp

execute at @s run tp @s ^ ^ ^10
execute at @s positioned ^ ^ ^-1 run summon marker ~ ~ ~ {Tags:["cp3tmpmarker"]}
execute at @s facing entity @e[tag=cp3tmpmarker,limit=1] feet run tp @s ~ ~ ~ ~ ~
kill @e[tag=cp3tmpmarker]