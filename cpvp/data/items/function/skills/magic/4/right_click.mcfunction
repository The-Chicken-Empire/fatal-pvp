#check
data modify storage durabilitycheck trigger set value SelectedItem
execute store result score $check main run function items:skills/allcheck
scoreboard players reset $check main
#reset
scoreboard players set @s carrotuse 0