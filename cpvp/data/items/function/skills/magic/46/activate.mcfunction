scoreboard players reset @s magic46using
scoreboard players reset @s magic46usingprev

tag @s add magic46tmp
scoreboard players set $tmp tmp 0
execute as @a[tag=playing,tag=!magic46tmp] if score @s teamscore = @a[tag=magic46tmp,limit=1] teamscore run function items:skills/magic/46/getmaxhp
execute if entity @a[tag=magic46target] as @a[tag=magic46target,sort=nearest] run function items:skills/magic/46/teleported
scoreboard players reset $tmp tmp
tag @s remove magic46tmp

execute at @s run particle dust{color:[0,0,0],scale:2} ~ ~ ~ 0.5 1 0.5 0 100 normal
execute at @s run playsound minecraft:item.armor.equip_elytra player @a ~ ~ ~ 1 0.8
execute at @s run playsound minecraft:item.armor.equip_elytra player @a ~ ~ ~ 1 0.8
execute at @s run playsound minecraft:item.armor.equip_elytra player @a ~ ~ ~ 1 0.8
execute at @s run playsound minecraft:item.armor.equip_elytra player @a ~ ~ ~ 1 0.8
execute at @s run playsound minecraft:item.armor.equip_elytra player @a ~ ~ ~ 1 0.8
execute at @s run playsound minecraft:item.armor.equip_elytra player @a ~ ~ ~ 1 0.8
