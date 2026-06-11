tag @s add meleevictim
tag @s remove meleenexttick
tag @s remove rangenexttick
execute as @a if score @s playerdata = @e[tag=meleevictim,limit=1] meleeattacker run tag @s add meleeattacker

scoreboard players operation @s damagetaken = @s damageresist
scoreboard players reset @s damageresist

tag @s add physicaldamage
tag @s add meleedamage
scoreboard players operation @s attackerdata = @e[tag=meleeattacker,limit=1] playerdata

execute if score @s usedweapon matches -2147483648..2147483647 store result storage cpvp: usedweapon int 1 run scoreboard players get @s usedweapon

data modify storage atktrigger: hage set value {itemtype:weapon,atktype:melee}
execute store result storage atktrigger: hage.id int 1 run scoreboard players get @s usedweapon

function damage:atkercheck
data remove storage cpvp: usedweapon
scoreboard players reset @s usedweapon