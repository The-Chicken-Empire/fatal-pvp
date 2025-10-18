tag @s add perk36this
execute as @a if score @s playerdata = @a[tag=perk36this,limit=1] perk36 run return run tag @a remove perk36this

scoreboard players operation @s maxmp *= $0 main

scoreboard players add @s speed 20
scoreboard players add @s damage 20
scoreboard players remove @s defence 20