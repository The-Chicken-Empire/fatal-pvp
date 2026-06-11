tag @s add meleenexttick
scoreboard players operation @s meleeattacker = @e[tag=meleeattackertmp] playerdata
execute if items entity @a[tag=meleeattackertmp,limit=1] weapon *[custom_data~{cpvp:{item_type:"weapon"}}] store result score @s usedweapon run data get entity @a[tag=meleeattackertmp,limit=1] SelectedItem.components."minecraft:custom_data".cpvp.id
tag @e[tag=meleeattackertmp] remove meleeattackertmp