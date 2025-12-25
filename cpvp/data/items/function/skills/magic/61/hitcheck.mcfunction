
execute at @s run playsound block.respawn_anchor.deplete player @a ~ ~ ~ 1 2 0
execute at @s run playsound block.respawn_anchor.deplete player @a ~ ~ ~ 1 2 0
execute at @s run particle end_rod ~ ~1 ~ 0.3 0.8 0.3 0.1 20 normal

execute at @s positioned ~-0.75 ~ ~-0.75 as @e[tag=playing,dx=2.5,dy=0,dz=2.5,distance=..2.5] unless score @s teamscore = @e[tag=m61id2tmp,limit=1] teamscore run tag @s add m61victim
execute at @s positioned ~-0.75 ~0.2 ~-0.75 as @e[tag=playing,dx=2.5,dy=0,dz=2.5,distance=..2.5] unless score @s teamscore = @e[tag=m61id2tmp,limit=1] teamscore run tag @s add m61victim
execute at @s positioned ~-0.75 ~0.4 ~-0.75 as @e[tag=playing,dx=2.5,dy=0,dz=2.5,distance=..2.5] unless score @s teamscore = @e[tag=m61id2tmp,limit=1] teamscore run tag @s add m61victim
execute at @s positioned ~-0.75 ~0.6 ~-0.75 as @e[tag=playing,dx=2.5,dy=0,dz=2.5,distance=..2.5] unless score @s teamscore = @e[tag=m61id2tmp,limit=1] teamscore run tag @s add m61victim
execute at @s positioned ~-0.75 ~0.8 ~-0.75 as @e[tag=playing,dx=2.5,dy=0,dz=2.5,distance=..2.5] unless score @s teamscore = @e[tag=m61id2tmp,limit=1] teamscore run tag @s add m61victim
execute at @s positioned ~-0.75 ~1 ~-0.75 as @e[tag=playing,dx=2.5,dy=0,dz=2.5,distance=..2.5] unless score @s teamscore = @e[tag=m61id2tmp,limit=1] teamscore run tag @s add m61victim
execute at @s positioned ~-0.75 ~1.2 ~-0.75 as @e[tag=playing,dx=2.5,dy=0,dz=2.5,distance=..2.5] unless score @s teamscore = @e[tag=m61id2tmp,limit=1] teamscore run tag @s add m61victim
execute at @s positioned ~-0.75 ~1.4 ~-0.75 as @e[tag=playing,dx=2.5,dy=0,dz=2.5,distance=..2.5] unless score @s teamscore = @e[tag=m61id2tmp,limit=1] teamscore run tag @s add m61victim
execute at @s positioned ~-0.75 ~1.6 ~-0.75 as @e[tag=playing,dx=2.5,dy=0,dz=2.5,distance=..2.5] unless score @s teamscore = @e[tag=m61id2tmp,limit=1] teamscore run tag @s add m61victim
execute at @s positioned ~-0.75 ~1.8 ~-0.75 as @e[tag=playing,dx=2.5,dy=0,dz=2.5,distance=..2.5] unless score @s teamscore = @e[tag=m61id2tmp,limit=1] teamscore run tag @s add m61victim
execute at @s positioned ~-0.75 ~2.0 ~-0.75 as @e[tag=playing,dx=2.5,dy=0,dz=2.5,distance=..2.5] unless score @s teamscore = @e[tag=m61id2tmp,limit=1] teamscore run tag @s add m61victim

execute as @e[tag=m61victim] run function items:skills/magic/61/hit
tag @e[tag=m61victim] remove m61victim
