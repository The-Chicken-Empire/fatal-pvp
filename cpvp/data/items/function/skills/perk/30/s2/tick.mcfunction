tag @s add perk30dao
data modify storage atktrigger: hage set value {itemtype:chestplate,id:17,atktype:1}
execute as @a if score @s playerdata = @e[tag=perk30dao,limit=1] counter run scoreboard players set @s damagetaken 15
execute as @a if score @s playerdata = @e[tag=perk30dao,limit=1] counter run tag @s add truedamage
execute as @a if score @s playerdata = @e[tag=perk30dao,limit=1] counter run tag @s add nodamagehop
execute as @a if score @s playerdata = @e[tag=perk30dao,limit=1] counter run scoreboard players operation @s attackerdata = @e[tag=perk30dao,limit=1] owner

execute as @a if score @s playerdata = @e[tag=perk30dao,limit=1] counter run function damage:atkercheck








tag @s remove perk30dao
kill


