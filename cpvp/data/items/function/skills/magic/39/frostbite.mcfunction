tellraw @a[tag=atker] [{"text":"[T式 Absolute-0] ","color":"#77faff"},{"text":"凍結","color":"aqua"},{"text":"によって","color":"white"},{"text":"HP","color":"red"},{"text":"を0にした！","color":"white"}]
tag @s remove magic39frostbite
execute if entity @s[tag=combatdummy] run return fail
scoreboard players set @s hp 0
scoreboard players set @s absorption 0