execute store result score $tmp tmp run data get entity @s OnGround 1
execute if score $tmp tmp matches 0 run return run function items:skills/magic/48/float
execute at @s if block ~ ~ ~ lava run return run function items:skills/magic/48/lava
execute at @s if block ~ ~1 ~ lava run return run function items:skills/magic/48/lava


tag @s add magic48tmp

execute at @s summon marker run function items:skills/magic/48/summoncore

execute at @s positioned ~ ~6 ~ summon item_display run function items:skills/magic/48/summonposition
execute at @s positioned ~3 ~6 ~ summon item_display run function items:skills/magic/48/summonposition
execute at @s positioned ~-3 ~6 ~ summon item_display run function items:skills/magic/48/summonposition
execute at @s positioned ~ ~6 ~3 summon item_display run function items:skills/magic/48/summonposition
execute at @s positioned ~ ~6 ~-3 summon item_display run function items:skills/magic/48/summonposition
execute at @s positioned ~3 ~6 ~3 summon item_display run function items:skills/magic/48/summonposition
execute at @s positioned ~3 ~6 ~-3 summon item_display run function items:skills/magic/48/summonposition
execute at @s positioned ~-3 ~6 ~3 summon item_display run function items:skills/magic/48/summonposition
execute at @s positioned ~-3 ~6 ~-3 summon item_display run function items:skills/magic/48/summonposition
execute at @s positioned ~6 ~6 ~ summon item_display run function items:skills/magic/48/summonposition
execute at @s positioned ~-6 ~6 ~ summon item_display run function items:skills/magic/48/summonposition
execute at @s positioned ~ ~6 ~6 summon item_display run function items:skills/magic/48/summonposition
execute at @s positioned ~ ~6 ~-6 summon item_display run function items:skills/magic/48/summonposition


playsound entity.breeze.death hostile @a ~ ~ ~ 1 1.8 0



execute as @e[tag=magic48tmp2] at @s positioned ~ ~-6 ~ run function items:skills/magic/48/particle1
tag @e[tag=magic48tmp2] remove magic48tmp2
tag @e[tag=magic48tmp4] remove magic48tmp4

execute at @s run playsound entity.breeze.hurt hostile @a ~ ~ ~ 1 0.6 0

tag @s remove magic48tmp
scoreboard players set $ct main 240
function api:ct/mainhand