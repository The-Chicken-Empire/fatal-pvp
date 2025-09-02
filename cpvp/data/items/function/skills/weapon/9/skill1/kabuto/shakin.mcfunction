tag @s add cp.tmp
execute as @a if score @s playerdata = @e[tag=cp.tmp,limit=1] owner run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1.0 2
execute as @a if score @s playerdata = @e[tag=cp.tmp,limit=1] owner run playsound minecraft:block.anvil.place master @a ~ ~ ~ 1 2
execute as @a if score @s playerdata = @e[tag=cp.tmp,limit=1] owner run function api:motion/rotation_and_y {power:20,y:90}
tag @s remove cp.tmp