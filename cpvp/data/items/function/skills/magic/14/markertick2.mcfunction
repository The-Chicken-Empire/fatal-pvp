execute store result score @s tmp run data get entity @s Fire
execute if score @s tmp matches 1.. run function items:skills/magic/14/explosion
execute if entity @s[nbt={OnGround:1b},scores={skills=30..}] run function items:skills/magic/14/explosion
