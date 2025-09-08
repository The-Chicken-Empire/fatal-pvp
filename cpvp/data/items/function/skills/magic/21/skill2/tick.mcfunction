scoreboard players add @s counter2 1
playsound block.beacon.ambient master @a ~ ~ ~ 1 1
execute if score @s counter2 matches 20 at @s run particle heart ~ ~2 ~ 1 1 1 1 10
execute if score @s counter2 matches 40 at @s run particle heart ~ ~2 ~ 1 1 1 1 10
execute if score @s counter2 matches 60 at @s run particle heart ~ ~2 ~ 1 1 1 1 10
execute if score @s counter2 matches 80 at @s run particle heart ~ ~2 ~ 1 1 1 1 10
execute if score @s counter2 matches 100 at @s run particle heart ~ ~2 ~ 1 1 1 1 10
execute if score @s counter2 matches 100.. at @s run function items:skills/magic/21/skill2/5s