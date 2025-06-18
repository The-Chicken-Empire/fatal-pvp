

execute as @a at @s run function buff:tick/ with entity @s
execute if entity @e[tag=initialized,limit=1,type=!player] as @e[tag=initialized,type=!player] run function buff:tick/ with entity @s