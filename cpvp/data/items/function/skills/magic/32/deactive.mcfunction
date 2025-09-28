tag @s add magic32dtmp
tag @s remove magic32dashing
effect clear @s speed
attribute @s fall_damage_multiplier modifier remove magic32

execute at @s run playsound block.fire.extinguish block @s ~ ~ ~ 1 0.8 0
execute as @e[tag=magic32dash] if score @s target = @a[tag=magic32dtmp,limit=1] playerdata run kill @s

tag @s remove magic32dtmp