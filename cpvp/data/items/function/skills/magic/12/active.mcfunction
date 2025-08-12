scoreboard players operation @s mp -= @s mpcost
tag @s add magic12tmp
#marker召喚
scoreboard players set $tmp tmp 0
execute as @a[distance=..35,gamemode=!spectator] unless score @s teamscore = @a[tag=magic12tmp,limit=1] teamscore run scoreboard players set $tmp tmp 1
execute if score $tmp tmp matches 0 run return run function items:skills/magic/12/miss
execute as @a[distance=..35,gamemode=!spectator] unless score @s teamscore = @a[tag=magic12tmp,limit=1] teamscore run function items:skills/magic/12/call
execute at @s run playsound block.end_portal.spawn player @s ~ ~ ~ 0.5 2 0.5
tag @s remove magic12tmp
function system:cooltime/general/set_ct_mainhand {cooltime:80}