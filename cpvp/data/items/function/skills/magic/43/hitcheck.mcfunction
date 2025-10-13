particle dust{color:6631167,scale:1} ~ ~ ~ 0.4 0.4 0.4 0.1 20 normal
playsound block.lantern.place block @a ~ ~ ~ 1 0 0
playsound entity.generic.explode block @a ~ ~ ~ 1 2 0
execute positioned ~-2 ~-2 ~-2 as @e[dx=3,dy=3,dz=3,tag=playing] unless score @s teamscore = @e[tag=magic43tmp4,limit=1] teamscore run function items:skills/magic/43/hit