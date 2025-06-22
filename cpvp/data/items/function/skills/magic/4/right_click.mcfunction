#使用回数チェック(mp/ctがあるならこの下)
execute store result score $check main run function items:skills/item/durabilitycheck
execute if score $check main matches 1.. run function items:skills/magic/4/active
execute if score $check main matches ..0 run function items:skills/item/durability0
scoreboard players reset $check main
#reset
scoreboard players set @s carrotuse 0