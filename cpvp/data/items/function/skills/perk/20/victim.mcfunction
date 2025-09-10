tag @s add victim
execute if entity @a[tag=perk20tmp,tag=magicdamagetmp] run tag @s add magicdamagetmp
execute if entity @a[tag=perk20tmp,tag=physicaldamagetmp] run tag @s add physicaldamagetmp
execute if entity @a[tag=perk20tmp,tag=meleedamagetmp] run tag @s add meleedamagetmp
execute if entity @a[tag=perk20tmp,tag=rangedamagetmp] run tag @s add rangedamagetmp
execute if entity @a[tag=perk20tmp,tag=specialdamagetmp] run tag @s add specialdamagetmp
execute if entity @a[tag=perk20tmp,tag=unavoidable] run tag @s add unavoidable
execute if entity @a[tag=perk20tmp,tag=truedamagetmp] run tag @s add truedamagetmp
scoreboard players operation @s damagetaken = @a[tag=perk20tmp,limit=1] damagetaken

execute at @s run playsound entity.husk.death block @s ~ ~ ~ 1 1.3 1
execute at @s run particle crimson_spore ~ ~ ~ 0.2 0.4 0.2 0.2 20
tellraw @s [{"text":"[運命改変]","color":"yellow"},{"selector":"@a[tag=perk20tmp,limit=1]"},{"text":"からダメージを押し付けられた！","color":"white"}]
scoreboard players set $perk20 main 1