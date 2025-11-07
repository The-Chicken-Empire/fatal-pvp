execute as @a[tag=magic50tmp,limit=1] run scoreboard players remove @s eng 10
execute as @a[tag=magic50tmp,limit=1] if score @s eng matches ..0 run scoreboard players set @s eng 0
execute as @a[tag=magic50tmp,limit=1] at @s run playsound block.beacon.activate block @s ~ ~ ~ 1 2 1
execute as @a[tag=magic50tmp,limit=1] at @s run playsound block.beacon.activate block @s ~ ~ ~ 1 2 1
scoreboard players add @s counting 3
