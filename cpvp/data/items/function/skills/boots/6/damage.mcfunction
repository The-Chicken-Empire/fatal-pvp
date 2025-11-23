scoreboard players remove @s hp 20
execute if score @s hp matches ..0 run scoreboard players set @s hp 1
execute at @s run playsound entity.player.hurt player @s ~ ~ ~ 1 1.5 1