#参照元
data modify storage dummy item set from entity @s SelectedItem.components."minecraft:custom_data"
#耐久参照
scoreboard players reset $durability main
execute store result score $durability main run data get storage dummy item.cpvp.durability
scoreboard players remove $durability main 1
execute store result storage dummy durability int 1 run scoreboard players get $durability main
#data replace
setblock 0 250 0 minecraft:shulker_box{lock:{items:"barrier",count:1}} replace
item replace block 0 250 0 container.0 from entity @s weapon.mainhand
data modify block 0 250 0 Items.[0].components."minecraft:custom_data".cpvp.durability set from storage dummy durability
item replace entity @s weapon.mainhand from block 0 250 0 container.0
setblock 0 250 0 air replace
#最大耐久を参照
execute store result storage dummy maxdurability int 1 run data get storage dummy item.cpvp.maxdurability
#rename
execute if score $durability main matches 1.. run item modify entity @s weapon.mainhand items:item/renameitem
execute if score $durability main matches ..0 run item modify entity @s weapon.mainhand items:item/renameitem0
#break
execute if score $durability main matches ..0 at @s run playsound entity.item.break master @a ~ ~ ~ 1 1 1
#reset
data remove storage dummy durability
data remove storage dummy item
data remove storage dummy maxdurability
scoreboard players reset $durability main