execute store result entity @s Rotation[0] float 1 run random value -179..180
execute store result entity @s Rotation[1] float 1 run random value -90..90
execute store result score $tmp tmp run random value 0..2
execute if score $tmp tmp matches 0 at @s positioned ~ ~1 ~ run function items:skills/weapon/18/attack/particles/awe
execute if score $tmp tmp matches 1 at @s positioned ~ ~1 ~ run function items:skills/weapon/18/attack/particles/contempt
execute if score $tmp tmp matches 2 at @s positioned ~ ~1 ~ run function items:skills/weapon/18/attack/particles/gaze

scoreboard players add @s tmp 1
execute if score @s tmp matches ..49 run function items:skills/weapon/18/attack/particles/