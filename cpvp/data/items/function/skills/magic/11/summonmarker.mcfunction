tag @s add magic11
tag @s add skillmarker
tag @s add magic11tmp
#方向指定
execute at @s run summon marker ~ ~ ~ {Tags:["tmp"]}
execute at @s run tp @s @a[tag=magic11tmp,limit=1]
execute positioned 0.0 0.0 0.0 positioned ^ ^ ^10 facing 0.0 0.0 0.0 run tp @s ~ ~ ~ ~ ~
execute as @e[type=marker,tag=tmp,limit=1] at @s rotated as @e[type=marker,tag=magic11tmp,limit=1] run tp @s ~ ~ ~ ~ ~
tp @s @e[type=marker,tag=tmp,limit=1]
kill @e[type=marker,tag=tmp]

tag @s remove magic11tmp

scoreboard players operation @s owner = @a[tag=magic11tmp,limit=1] playerdata
scoreboard players operation @s ownerteam = @a[tag=magic11tmp,limit=1] teamscore