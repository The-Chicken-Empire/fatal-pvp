tag @s add magic19tmp2
execute as @a if score @s playerdata = @e[tag=magic19tmp2,limit=1] owner run tag @s add magic19tmp3

summon marker ~ ~ ~ {Tags:["magic19tmp4"]}
execute as @e[tag=magic19tmp4] at @s rotated as @e[tag=magic19tmp2] run tp @s ~ ~ ~ ~ ~

execute at @s run tp @s @a[tag=magic19tmp3,limit=1]

execute at @s rotated as @e[tag=magic19tmp4] run tp @s ~ ~ ~ ~ ~
execute at @s run tp @s ~ ~1 ~ ~20 ~

kill @e[tag=magic19tmp4]

tag @a remove magic19tmp3
tag @s remove magic19tmp2


execute if score @s skills matches 60 run kill @s