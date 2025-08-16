execute at @s run tp @s @e[tag=weapon6tmp4,limit=1]

execute at @s positioned ^ ^ ^-1 run summon marker ~ ~ ~ {Tags:["weapon6tmp5"]}

execute at @s facing entity @e[tag=weapon6tmp5,limit=1] eyes run tp @s ~ ~ ~ ~ ~
execute at @s run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 2 0
kill @e[tag=weapon6tmp5]