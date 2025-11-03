execute unless predicate items:sneak run return run scoreboard players set @s weapon18using 0
scoreboard players add @s weapon18using 1

execute if score @s weapon18using matches 1 at @s run playsound minecraft:entity.allay.ambient_with_item neutral @a ~ ~ ~ 2 0.4
execute if score @s weapon18using matches 1 at @s run playsound minecraft:block.bell.resonate block @s ~ ~ ~ 2 1.4
execute if score @s weapon18using matches 1.. at @s run particle landing_lava ~ ~ ~ 2 2 2 0 20 force

execute if score @s weapon18using matches 36 at @s run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 2 0.9
execute if score @s weapon18using matches 36 at @s run particle minecraft:wax_on ~ ~ ~ 7 7 7 0 5000 normal
execute if score @s weapon18using matches 36 at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force
