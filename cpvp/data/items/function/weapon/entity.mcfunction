execute store result score $tmp2 tmp run data get entity @s Health 10
scoreboard players operation $tmp tmp = $10000 main
scoreboard players operation $tmp tmp -= $tmp2 tmp

scoreboard players operation $tntn tmp = $tmp tmp

tag @s add physicaldamage
tag @s add meleedamage

scoreboard players operation @s attackerdata = @a[tag=meleeattackertmp,limit=1] playerdata
scoreboard players operation @s damagetaken = $tmp tmp
tag @s add meleevictim
tag @e[tag=meleeattackertmp] add meleeattacker

execute if items entity @e[tag=meleeattackertmp,limit=1] weapon.mainhand *[custom_data~{cpvp:{item_type:"weapon"}}] store result storage cpvp: usedweapon int 1 run data get entity @a[tag=meleeattackertmp,limit=1] SelectedItem.components."minecraft:custom_data".cpvp.id

data modify storage atktrigger: hage set value {itemtype:weapon,atktype:melee}
execute store result storage atktrigger: hage.id int 1 run data get entity @a[tag=meleeattackertmp,limit=1] SelectedItem.components."minecraft:custom_data".cpvp.id

function damage:atkercheck
data remove storage cpvp: usedweapon

data modify entity @s Health set value 1000
tag @e[tag=meleeattackertmp] remove meleeattackertmp
scoreboard players reset $tmp tmp
scoreboard players reset $tmp2 tmp