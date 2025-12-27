scoreboard players set $tmphpr tmp 60

#magic62
tag @s add m62hprtmp
scoreboard players set $m62hprredtmp tmp 0
execute as @e[tag=magic62clock,distance=..25] if score @s teamscore = @a[tag=m62hprtmp,limit=1] teamscore run scoreboard players set $m62hprredtmp tmp 1
execute if score $m62hprredtmp tmp matches 1 run scoreboard players operation $tmphpr tmp /= $2 main
tag @s remove m62hprtmp
scoreboard players reset $m62hprredtmp tmp

execute as @a if score @s hprtime >= $tmphpr tmp run function system:healthregen