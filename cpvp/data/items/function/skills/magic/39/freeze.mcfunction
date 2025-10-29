particle block{block_state:blue_ice} ~ ~1 ~ 4 4 4 0 150 normal
function items:skills/magic/39/particle
playsound entity.breeze.death hostile @a ~ ~ ~ 1 2 0

execute as @e[distance=..10,tag=playing] unless score @s teamscore = @e[tag=magic39tmp2,limit=1] teamscore run function items:skills/magic/39/hit