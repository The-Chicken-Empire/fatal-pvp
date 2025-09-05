tag @s add cp.tmp

execute as @a if score @s playerdata = @e[tag=cp.tmp,limit=1] owner run tag @s add cp.owner

execute as @a[tag=cp.owner] at @s rotated ~ 0 anchored eyes positioned ^ ^ ^ positioned ~-0.75 ~-0.75 ~-0.75 as @e[tag=playing,dx=0.5,dy=0.5,dz=0.5] unless score @s teamscore = @e[tag=cp.owner,limit=1] teamscore run tag @s add cp.hit
execute as @a[tag=cp.owner] at @s rotated ~ 0 anchored eyes positioned ^ ^ ^1 positioned ~-0.75 ~-0.75 ~-0.75 as @e[tag=playing,dx=0.5,dy=0.5,dz=0.5] unless score @s teamscore = @e[tag=cp.owner,limit=1] teamscore run tag @s add cp.hit
execute as @a[tag=cp.owner] at @s rotated ~ 0 anchored eyes positioned ^ ^ ^2 positioned ~-0.75 ~-0.75 ~-0.75 as @e[tag=playing,dx=0.5,dy=0.5,dz=0.5] unless score @s teamscore = @e[tag=cp.owner,limit=1] teamscore run tag @s add cp.hit
execute as @a[tag=cp.owner] at @s rotated ~ 0 anchored eyes positioned ^ ^ ^3 positioned ~-0.75 ~-0.75 ~-0.75 as @e[tag=playing,dx=0.5,dy=0.5,dz=0.5] unless score @s teamscore = @e[tag=cp.owner,limit=1] teamscore run tag @s add cp.hit

execute as @e[tag=cp.hit] at @s run function items:skills/weapon/9/skill1/kabuto/summon

tag @a[tag=cp.owner] remove cp.owner
tag @s remove cp.tmp
