tag @s add magic26itmp
execute if score @s skills matches 60.. run return run function items:skills/magic/26/return
scoreboard players set @s counting 24
scoreboard players operation @s counting -= @s skills
execute if score @s counting matches ..0 run scoreboard players set @s counting 0
execute at @s run particle snowflake ~ ~ ~ 0.2 0.2 0.2 0.25 3 normal

execute if score @s counting matches 1.. run function items:skills/magic/26/iloop

tag @s remove magic26itmp