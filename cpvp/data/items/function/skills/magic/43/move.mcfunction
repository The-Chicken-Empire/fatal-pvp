execute if score @s counting2 matches ..0 run return run function items:skills/magic/43/movefail

scoreboard players remove @s counting2 1
scoreboard players set @s skills 0
execute unless score @s counting matches 150.. run scoreboard players add @s counting 10
execute at @s rotated as @a[tag=magic43tmp3,limit=1] run tp @s ~ ~ ~ ~ ~
function items:skills/magic/43/move2

execute as @a[tag=magic43tmp3,limit=1] at @s run playsound entity.enderman.teleport hostile @s ~ ~ ~ 1 2 1

tag @a[tag=magic43tmp3] remove magic43tmp3

tag @s add magic43tmp2
execute at @s unless block ~ ~ ~ #main:air run function items:skills/magic/43/explode
tag @s remove magic43tmp2