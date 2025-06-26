#使用回数チェック(mp/ctがあるならこの下)
data modify storage durabilitycheck trigger set value SelectedItem
execute store result score $check main run function items:skills/item/durabilitycheck with storage durabilitycheck
execute if score $check main matches 1.. run function items:skills/magic/4/active
execute if score $check main matches ..0 run function items:skills/item/durability0
scoreboard players reset $check main
#reset
scoreboard players set @s carrotuse 0