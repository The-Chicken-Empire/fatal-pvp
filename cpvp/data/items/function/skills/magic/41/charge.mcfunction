execute as @a if score @s playerdata = @e[tag=magic41tmp2,limit=1] owner run tag @s add magic41tmp3

execute unless score @a[tag=magic41tmp3,limit=1] eng matches 1.. run return run function items:skills/magic/41/charged

scoreboard players remove @a[tag=magic41tmp3] eng 1
scoreboard players add @s counting 1
execute as @a[tag=magic41tmp3] at @s run playsound block.respawn_anchor.charge block @a ~ ~ ~ 1 2 0
execute if score @s counting matches 1..5 as @a[tag=magic41tmp3] at @s run particle dust{color:1279,scale:1} ~ ~ ~ 0.5 0.8 0.5 0 6 normal
execute if score @s counting matches 6..10 as @a[tag=magic41tmp3] at @s run particle dust{color:26367,scale:1} ~ ~ ~ 0.5 0.8 0.5 0 6 normal
execute if score @s counting matches 11..15 as @a[tag=magic41tmp3] at @s run particle dust{color:2031360,scale:1} ~ ~ ~ 0.5 0.8 0.5 0 6 normal
execute if score @s counting matches 16..20 as @a[tag=magic41tmp3] at @s run particle dust{color:15662848,scale:1} ~ ~ ~ 0.5 0.8 0.5 0 6 normal
execute if score @s counting matches 21..25 as @a[tag=magic41tmp3] at @s run particle dust{color:16748800,scale:1} ~ ~ ~ 0.5 0.8 0.5 0 6 normal
execute if score @s counting matches 26..30 as @a[tag=magic41tmp3] at @s run particle dust{color:16711680,scale:1} ~ ~ ~ 0.5 0.8 0.5 0 6 normal
execute if score @s counting matches 31.. as @a[tag=magic41tmp3] at @s run particle dust{color:7274751,scale:1} ~ ~ ~ 0.5 0.8 0.5 0 6 normal