execute at @s positioned ~-0.5 ~ ~-0.5 as @e[tag=playing,dx=1,dy=2,dz=1] unless score @s teamscore = @e[tag=weapon6tmp4,limit=1] teamscore run tag @s add weapon6victim
scoreboard players remove @s counting 1
execute at @s anchored feet positioned ^ ^ ^0.1 unless block ~ ~ ~ #main:air run scoreboard players set @s counting 0
execute at @s run particle dust{color:16722988,scale:1} ~ ~ ~ 0.2 0.2 0.2 0 1 normal

execute if score @s counting matches ..0 as @a if score @s playerdata = @e[tag=weapon6tmp4,limit=1] owner run function items:skills/weapon/6/back
execute if score @s counting matches ..0 as @e[tag=weapon6victim] run function items:skills/weapon/6/hit1
execute if score @s counting matches ..0 run return run kill @s
execute at @s run tp @s ^ ^ ^0.1

execute if score @s counting matches 1.. run function items:skills/weapon/6/rush
