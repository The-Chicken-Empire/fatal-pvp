summon marker ~ ~ ~ {Tags:["offhand7tmp"]}
execute as @e[type=marker,tag=offhand7tmp,limit=1] at @s run tp @s ~ ~1 ~ 60 0
execute as @e[type=marker,tag=offhand7tmp,limit=1] at @s positioned ^ ^ ^7 run particle dust{color:12873,scale:1} ~ ~ ~ 0 0 0 0 1 normal
execute as @e[type=marker,tag=offhand7tmp,limit=1] at @s positioned ^ ^ ^-7 run particle dust{color:12873,scale:1} ~ ~ ~ 0 0 0 0 1 normal
execute as @e[type=marker,tag=offhand7tmp,limit=1] at @s positioned ^7 ^ ^ run particle dust{color:12873,scale:1} ~ ~ ~ 0 0 0 0 1 normal
execute as @e[type=marker,tag=offhand7tmp,limit=1] at @s positioned ^-7 ^ ^ run particle dust{color:12873,scale:1} ~ ~ ~ 0 0 0 0 1 normal
kill @e[type=marker,tag=offhand7tmp]