execute unless block ~ ~ ~ #main:air run kill @s
scoreboard players set @s counting2 4
tag @s add magic9tmp3

execute at @s run particle dust_color_transition{from_color:14811136,to_color:4915336,scale:2} ~ ~ ~ 0.1 0.1 0.1 0 1 normal
function items:skills/magic/9/move

tag @s remove magic9tmp3