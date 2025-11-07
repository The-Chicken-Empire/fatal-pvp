scoreboard players operation @s owner = @a[tag=magic52tmp,limit=1] playerdata
scoreboard players operation @s teamscore = @a[tag=magic52tmp,limit=1] teamscore
tag @s add skillmarker
tag @s add magic52core
tag @s add magic52coretmp
execute at @s if block ~ ~-0.1 ~ #main:air run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ #main:air run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ #main:air run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ #main:air run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ #main:air run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ #main:air run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ #main:air run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ #main:air run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ #main:air run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ #main:air run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ #main:air run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ #main:air run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ #main:air run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ #main:air run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ #main:air run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ #main:air run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ #main:air run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ #main:air run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ #main:air run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ #main:air run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ #main:air run tp @s ~ ~-0.1 ~

execute at @s if block ~ ~-0.1 ~ #main:air run return run kill @s
function items:skills/markerid

execute at @s run playsound block.grass.step player @a ~ ~ ~ 1 1 0
execute at @s run playsound block.grass.step player @a ~ ~ ~ 1 1 0
execute at @s run playsound block.grass.step player @a ~ ~ ~ 1 1 0
execute at @s run playsound block.rooted_dirt.step player @a ~ ~ ~ 1 1 0
execute at @s run playsound block.rooted_dirt.step player @a ~ ~ ~ 1 1 0
execute at @s run playsound block.rooted_dirt.step player @a ~ ~ ~ 1 1 0




particle block_crumble{block_state:dirt} ~ ~0.3 ~ 0.5 0 0.5 1 10 normal
particle block_crumble{block_state:cobblestone} ~ ~0.3 ~ 0.5 0 0.5 1 15 normal