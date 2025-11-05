execute if score @s cp21 matches 1.. run scoreboard players remove @s cp21 1
execute if score @s cp21 matches 1.. if score @s sneak matches 1.. if entity @s[nbt={FallFlying:1b}] run function api:motion/rotation {power:1}
execute unless score @s cp21 matches 1.. run item modify entity @s armor.chest items:skills/chestplate/21/not_glider