tag @s add magic48tmp3



execute if score @s skills matches 8 at @s run playsound item.mace.smash_ground_heavy player @a ~ ~ ~ 1 1.3 0
execute if score @s skills matches 8 as @e[tag=magic48] if score @s target = @e[tag=magic48tmp3,limit=1] markerid run function items:skills/magic/48/hitcheck

execute if score @s skills matches 8 as @e[tag=magic48hit] at @s run function items:skills/magic/48/hit

execute if score @s skills matches 8.. run kill @s

tag @s remove magic48tmp3