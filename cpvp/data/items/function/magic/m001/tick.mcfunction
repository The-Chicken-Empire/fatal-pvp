scoreboard players add @s skills 1
execute if score @s skills matches 40 at @s run playsound entity.elder_guardian.hurt master @a ~ ~ ~ 1 1.3 0
execute if score @s skills matches 50 at @s run particle cloud ~ ~ ~ 0 0 0 0.5 40
execute if score @s skills matches 50 run function items:magic/m001/explode