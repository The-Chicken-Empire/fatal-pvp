

tellraw @s [{"text":"[運命改変] ","color":"yellow"},{"text":"にダメージを押し付ける対象が居ない！","color":"white"}]
execute at @s run playsound entity.bat.death ambient @s ~ ~ ~ 1 2 1
tag @s remove perk20tmp

scoreboard players set $ct main 60
execute store result storage cpvp: ctcalc.slot int 1 run data get entity @s Inventory.[{components:{"minecraft:custom_data":{cpvp:{id:20b,item_type:"perk"}}}}].Slot
function api:ct/perk