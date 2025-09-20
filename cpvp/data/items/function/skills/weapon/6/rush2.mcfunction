execute at @s positioned ~-0.5 ~ ~-0.5 as @e[tag=playing,dx=0,dy=1,dz=0] unless score @s teamscore = @e[tag=weapon6tmp7,limit=1] teamscore run tag @s add weapon6victim2
scoreboard players remove @s counting 1
execute at @s anchored feet positioned ^ ^ ^0.1 unless block ~ ~ ~ #main:air run scoreboard players set @s counting 0
execute at @s run particle dust{color:7667712,scale:1} ~ ~ ~ 0.2 0.2 0.2 0 1 normal

execute if score @s counting matches ..0 as @a if score @s playerdata = @e[tag=weapon6tmp7,limit=1] owner at @s run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 0.5 0
execute if score @s counting matches ..0 as @a if score @s playerdata = @e[tag=weapon6tmp7,limit=1] owner at @s run tp @s @e[tag=weapon6tmp7,limit=1]
execute if score @s counting matches ..0 as @e[tag=weapon6victim2] run function items:skills/weapon/6/hit2
execute if score @s counting matches ..0 run return run kill @s
execute at @s run tp @s ^ ^ ^0.1
execute if score @s counting matches 1.. run function items:skills/weapon/6/rush2