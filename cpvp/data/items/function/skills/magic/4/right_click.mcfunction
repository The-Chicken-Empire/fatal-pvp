#check
data modify storage durabilitycheck trigger set value SelectedItem
execute store result score $check main run function items:skills/allcheck
execute if score $check main matches 1.. run function items:skills/magic/4/active
scoreboard players reset $check main
#reset
scoreboard players set @s carrotuse 0