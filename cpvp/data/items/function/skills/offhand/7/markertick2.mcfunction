execute if score @s counting matches 40 run scoreboard players set @s counting 0
execute if score @s counting2 matches 2 run scoreboard players set @s counting2 0
scoreboard players add @s counting 1
scoreboard players add @s counting2 1
execute if score @s counting2 matches 2 at @s run tp @s ~ ~ ~ ~15 ~

execute if score @s counting matches 2 at @s run tp @s ~ ~0.06 ~
execute if score @s counting matches 4 at @s run tp @s ~ ~0.045 ~
execute if score @s counting matches 6 at @s run tp @s ~ ~0.03 ~
execute if score @s counting matches 8 at @s run tp @s ~ ~0.015 ~
execute if score @s counting matches 14 at @s run tp @s ~ ~-0.015 ~
execute if score @s counting matches 16 at @s run tp @s ~ ~-0.03 ~
execute if score @s counting matches 18 at @s run tp @s ~ ~-0.045 ~
execute if score @s counting matches 20 at @s run tp @s ~ ~-0.06 ~
execute if score @s counting matches 22 at @s run tp @s ~ ~-0.06 ~
execute if score @s counting matches 24 at @s run tp @s ~ ~-0.045 ~
execute if score @s counting matches 26 at @s run tp @s ~ ~-0.03 ~
execute if score @s counting matches 28 at @s run tp @s ~ ~-0.015 ~
execute if score @s counting matches 34 at @s run tp @s ~ ~0.015 ~
execute if score @s counting matches 36 at @s run tp @s ~ ~0.03 ~
execute if score @s counting matches 38 at @s run tp @s ~ ~0.045 ~
execute if score @s counting matches 40 at @s run tp @s ~ ~0.06 ~



execute if score @s skills matches 300.. run kill @s