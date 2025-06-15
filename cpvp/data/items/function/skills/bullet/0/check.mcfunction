scoreboard players set @s mpcost 1500
execute store result score $check main run function system:skillcostcheck/skillcostcheck
execute if score $check main matches 1 run data modify storage tmp bullet set value {bullet:0b}
execute if score $check main matches 1 run scoreboard players set $dummy bulletcheck 0
$execute if score $check main matches 1 run function $(function)