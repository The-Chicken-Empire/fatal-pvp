tag @s add tmp
execute as @a if score @s playerdata = @e[tag=tmp,limit=1] owner at @s run playsound ui.button.click block @s ~ ~ ~ 1 0.5 1
tag @s remove tmp