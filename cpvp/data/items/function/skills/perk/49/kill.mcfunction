tag @s add perk49tmp2

execute as @a if score @s playerdata = @e[tag=perk49tmp2,limit=1] target run scoreboard players operation @s perk49 -= @e[tag=perk49tmp2,limit=1] counting

tag @s remove perk49tmp2
kill @s