execute at @s run playsound entity.lightning_bolt.thunder ambient @s ~ ~ ~ 0.3 1 0.3
execute at @s run particle electric_spark ~ ~ ~ 0.3 0.6 0.3 0.1 15
scoreboard players set $eng main 2
function api:charge/

scoreboard players set $ct main 160
function api:ct/leggings