
summon marker ~ ~1 ~ {Tags:["weapon6tmp8"]}

execute as @e[tag=weapon6tmp8,limit=1] at @s rotated as @a[tag=weapon6tmp3,limit=1] run tp @s ~ ~ ~ ~ ~
execute as @e[tag=weapon6tmp8,limit=1] at @s run function items:skills/weapon/6/particle2



kill @e[tag=weapon6tmp8,limit=1]