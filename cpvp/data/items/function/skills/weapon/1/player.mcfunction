scoreboard players operation @e[tag=victim,limit=1] damagetaken *= $10 main
execute as @e[tag=victim,limit=1] if score @s damagetaken > @s mp run return run function items:skills/weapon/1/ne

scoreboard players operation @e[tag=victim,limit=1] mp -= @e[tag=victim,limit=1] damagetaken
scoreboard players set @e[tag=victim,limit=1] damagetaken 0
execute as @e[tag=victim,limit=1] at @s run playsound block.beacon.deactivate ambient @s ~ ~ ~ 1 2 1