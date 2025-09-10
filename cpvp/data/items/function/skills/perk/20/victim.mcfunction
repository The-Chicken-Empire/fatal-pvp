tag @s add victim
execute if entity @a[tag=perk20tmp,tag=magicdamagetmp] run tag @s add magicdamagetmp
execute if entity @a[tag=perk20tmp,tag=physicaldamagetmp] run tag @s add physicaldamagetmp
execute if entity @a[tag=perk20tmp,tag=meleedamagetmp] run tag @s add meleedamagetmp
execute if entity @a[tag=perk20tmp,tag=rangedamagetmp] run tag @s add rangedamagetmp
execute if entity @a[tag=perk20tmp,tag=specialdamagetmp] run tag @s add specialdamagetmp
execute if entity @a[tag=perk20tmp,tag=unavoidable] run tag @s add unavoidable
execute if entity @a[tag=perk20tmp,tag=truedamagetmp] run tag @s add truedamagetmp
scoreboard players operation @s damagetaken = @a[tag=perk20tmp,limit=1] damagetaken

tellraw @s [{"text":"[運命改変]","color":"yellow"},{"selector":"@a[tag=perk20tmp,limit=1]"},{"text":"からダメージを押し付けられた！","color":"white"}]


tag @s remove perk20victim