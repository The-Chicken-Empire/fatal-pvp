particle electric_spark ~ ~1 ~ 0.5 0.7 0.5 0.1 3 normal
scoreboard players remove @s mp 75
execute if score @s mp matches ..0 run function items:skills/magic/32/deactive
execute if score @s mp matches ..0 run scoreboard players set @s mp 0