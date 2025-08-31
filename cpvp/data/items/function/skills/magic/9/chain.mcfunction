summon marker ~ ~1 ~ {Tags:["magic9tmp9"]}
execute as @e[tag=magic9tmp9,limit=1] facing entity @e[tag=magic9tmp6,limit=1] eyes run tp @s ~ ~ ~ ~ ~
scoreboard players set @e[tag=magic9tmp9] counting 100

execute as @e[tag=magic9tmp9,limit=1] at @s run function items:skills/magic/9/loop
kill @e[tag=magic9tmp9]