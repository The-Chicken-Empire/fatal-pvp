tag @s add magic13callmarker
tag @s add magic13callmarkertmp
tag @s add skillmarker
scoreboard players operation @s magic13markID1 = @e[tag=magic13tmp2,limit=1] markerid
scoreboard players operation @s owner = @e[tag=magic13tmp2,limit=1] owner
scoreboard players operation @s ownerteam = @e[tag=magic13tmp2,limit=1] ownerteam
execute as @a if score @s playerdata = @e[tag=magic13callmarkertmp,limit=1] owner run tag @s add magic13ownertmp
execute at @s run tp @s @a[tag=magic13ownertmp,limit=1]
execute at @s run tp @s ~ ~2.5 ~ ~ 180
tag @s remove magic13callmarkertmp
tag @a remove magic13ownertmp