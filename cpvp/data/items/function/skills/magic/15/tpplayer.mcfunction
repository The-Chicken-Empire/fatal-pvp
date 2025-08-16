
summon marker ~ ~ ~ {Tags:["magic15tmpmarker"]}
execute as @e[tag=magic15tmpmarker] rotated as @e[tag=magic15tmp3,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s run tp @s @a[tag=magic15tmp4,limit=1]
execute rotated as @e[tag=magic15tmpmarker,limit=1] run tp @s ~ ~ ~ ~ ~
kill @e[tag=magic15tmpmarker]