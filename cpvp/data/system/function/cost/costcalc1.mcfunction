scoreboard players set $dummy itemcount 0
execute store result score @s itemcount run data get entity @s Inventory
data modify storage -dummy costcalc set from entity @s Inventory
scoreboard players set @s itemcost 0
execute if score @s itemcount > $dummy itemcount run function system:cost/costcalc2
#まだ途中