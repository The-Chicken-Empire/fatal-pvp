scoreboard players set $tmp random 0
execute if score @s weapon7 matches 4.. store result score $tmp random run random value 0..1
execute if score $tmp random matches 1 run return fail

scoreboard players add @s weapon7 1
execute at @s run playsound item.trident.thunder ambient @a ~ ~ ~ 1 2 0
execute at @s run particle enchant ~ ~ ~ 0.4 1 0.4 0.2 20
execute at @s run particle dust{color:15007562,scale:0.5} ~ ~ ~ 0.4 1 0.4 0.2 20