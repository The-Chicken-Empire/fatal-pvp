tag @s remove magic26i
tag @s remove magic26itmp
tag @s add magic26f
tag @s add magic26ftmp
data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["magic26f"]}},id:"minecraft:barrier"}
scoreboard players set @s skills 0
execute as @a if score @s playerdata = @e[tag=magic26ftmp,limit=1] owner at @s run playsound entity.wind_charge.throw player @s ~ ~ ~ 1 1.3 1
execute at @s run playsound entity.wind_charge.throw player @a[distance=..10] ~ ~ ~ 1 1.3 0

execute as @e[tag=magic26ict] if score @s owner = @e[tag=magic26ftmp,limit=1] markerid run kill @s

tag @s remove magic26ftmp