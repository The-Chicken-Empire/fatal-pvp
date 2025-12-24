tag @s add perk49tmp3
execute as @e[tag=perk49] if score @s target = @a[tag=perk49tmp3,limit=1] playerdata run kill @s
scoreboard players reset @s perk49
tag @s add buffer
function effects:system/gain/ {id:43,duration:200,level:3}
execute at @s run playsound block.conduit.attack.target block @a ~ ~ ~ 1 1.3 0
execute at @s run playsound block.conduit.attack.target block @a ~ ~ ~ 1 1.3 0
execute at @s run particle firefly ~ ~1 ~ 0.3 0.5 0.3 0.1 15 force @a
tag @s remove perk49tmp3

scoreboard players set $ct main 1200
execute store result storage cpvp: ctcalc.slot int 1 run data get entity @s Inventory.[{components:{"minecraft:custom_data":{cpvp:{id:49b,item_type:"perk"}}}}].Slot
function api:ct/perk