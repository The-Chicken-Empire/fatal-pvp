tag @s add m62paratmp
scoreboard players set $m62paratmp tmp 0
execute as @e[tag=magic62clock,distance=..25] unless score @s teamscore = @a[tag=m62paratmp,limit=1] teamscore run scoreboard players set $m62paratmp tmp 1
execute if score $m62paratmp tmp matches 1 run return run function effects:effects/54/stun
tag @s remove m62paratmp
scoreboard players reset $m62paratmp tmp

$tp @s ~ ~ ~ $(1) $(2)
playsound entity.parrot.hurt player @a ~ ~ ~ 1 2 1
playsound entity.parrot.hurt player @a ~ ~ ~ 1 2 1

particle angry_villager ~ ~2.1 ~ 0.1 0 0.1 0.2 4 normal