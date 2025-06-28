tag @s add tmp
execute as @a if score @s playerdata = @e[tag=tmp,limit=1] owner run tp @s @e[tag=tmp,limit=1]
execute as @a if score @s playerdata = @e[tag=tmp,limit=1] owner at @s run playsound entity.enderman.teleport hostile @s ~ ~ ~ 1 1 1
kill @s