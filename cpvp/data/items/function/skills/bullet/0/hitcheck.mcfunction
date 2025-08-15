#判定範囲 0.1block
tag @s add tmpbullet
scoreboard players set $tmp tmp 0
execute at @s positioned ~0.05 ~0.05 ~0.05 as @a[tag=!tmpbullet,dx=0] unless score @s teamscore = @e[tag=tmpbullet,limit=1] ownerteam positioned ~-0.95 ~-0.95 ~-0.95 if entity @s[dx=0] run function items:skills/bullet/0/hit
execute at @s positioned ~0.05 ~0.05 ~0.05 as @e[type=#main:non_player,tag=!tmpbullet,dx=0] unless score @s ownerteam = @e[tag=tmpbullet,limit=1] ownerteam positioned ~-0.95 ~-0.95 ~-0.95 if entity @s[dx=0] run function items:skills/bullet/0/hit
execute if score $tmp tmp matches 1.. run kill @s
tag @s remove tmpbullet