tag @s add perk20tmp
tag @s remove victim

tag @r[tag=!perk20tmp] add perk20victim

tellraw @s [{"text":"[運命改変]","color":"yellow"},{"selector":"@a[tag=perk20victim,limit=1]"},{"text":"にダメージを押し付けた！","color":"white"}]

execute as @a[tag=perk20victim] run function items:skills/perk/20/victim

tag @s remove nodamagesoundtmp
tag @s remove meleevictim
tag @s remove physicaldamagetmp
tag @s remove magicdamagetmp
tag @s remove rangedamagetmp
tag @s remove meleedamagetmp
tag @s remove specialdamagetmp
tag @s remove truedamagetmp
scoreboard players reset @s damagetaken

tag @s remove perk20tmp

scoreboard players set $ct main 60
execute store result storage cpvp: ctcalc.slot int 1 run data get entity @s Inventory.[{components:{"minecraft:custom_data":{cpvp:{id:20b,item_type:"perk"}}}}].Slot
function api:ct/perk