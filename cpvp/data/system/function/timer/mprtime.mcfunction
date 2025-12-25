scoreboard players set $tmpmr tmp 10

#magic62
tag @s add m62mrtmp
scoreboard players set $m62mrredtmp tmp 0
execute as @e[tag=magic62clock,distance=..25] if score @s teamscore = @a[tag=m62mrtmp,limit=1] teamscore run scoreboard players set $m62mrredtmp tmp 1
execute if score $m62mrredtmp tmp matches 1 run scoreboard players operation $tmpmr tmp /= $2 main
tag @s remove m62mrtmp
scoreboard players reset $m62mrredtmp tmp

execute as @a if score @s mrtime >= $tmpmr tmp run function system:manaregen