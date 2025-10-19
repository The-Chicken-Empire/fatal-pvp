execute at @s run tp ^ ^ ^0.1
scoreboard players remove @s counting 1
scoreboard players remove @s counting2 1
scoreboard players remove @s counting3 1

execute if score @s counting3 matches ..0 at @s run particle dust_color_transition{from_color:16514816,to_color:16730112,scale:0.6} ~ ~ ~

execute positioned ~-0.01 ~-0.01 ~-0.01 as @e[tag=playing,dx=0] positioned ~-0.98 ~-0.98 ~-0.98 if entity @s unless score @s teamscore = @e[tag=magic41bullettmp,limit=1] teamscore run function items:skills/magic/41/bullethit
execute at @s unless block ~ ~ ~ #main:air run kill @s

execute if score @s counting3 matches ..0 run scoreboard players set @s counting3 4
execute if score @s counting2 matches ..0 run return run kill @s
execute if score @s counting matches 1.. run function items:skills/magic/41/loop