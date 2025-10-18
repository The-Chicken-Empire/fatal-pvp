scoreboard players add @s magic46using 1
execute if score @s magic46using matches 1 at @s run playsound entity.guardian.attack hostile @s ~ ~ ~ 1 0.8 1
execute if score @s magic46using matches 40 at @s run playsound minecraft:entity.allay.item_thrown neutral @s ~ ~ ~ 2 0 1
execute if score @s magic46using matches 40 at @s run particle dust{color:[0,0,0],scale:2} ~ ~ ~ 0.5 1 0.5 1 30 normal
