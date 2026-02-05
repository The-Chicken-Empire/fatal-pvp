scoreboard players add @s counter3 1
execute at @s positioned ~-0.75 ~-0.75 ~-0.75 as @e[tag=playing,dx=0,dy=0,dz=0] positioned ~0.5 ~0.5 ~0.5 if entity @s[dx=0,dy=0,dz=0] unless score @s teamscore = @a[tag=gun12owner,limit=1] teamscore run tag @s add hit
execute at @s run particle dust{color:16753314,scale:1} ~ ~ ~ 0 0 0 0 1 force @a
execute at @s facing entity @a[tag=gun12owner] eyes run tp @s ^ ^ ^0.5
execute at @s if score @s counter3 matches ..1000 positioned ~-0.5 ~-0.5 ~-0.5 unless entity @a[tag=gun12owner,limit=1,dx=0] at @s run function items:skills/gun/12/s2/recurse
scoreboard players operation @e[tag=hit] gun12 += @s counter
tag @e[tag=hit] remove hit
kill @s

