#効果付与
execute as @n[tag=victim] run function effects:system/modify/ {id:48,duration:-1,level:2}

#音と視覚効果
execute as @n[tag=victim] run function effects:system/pick/ {id:48}
execute store result score $tmp tmp run data get storage effect: targeteffect.level

execute if score $tmp tmp matches ..6 as @n[tag=victim] at @s run particle minecraft:dust{color:[1,1,0],scale:2} ^ ^1.8 ^0.5 0.5 0.5 0.5 10 20 force @s
execute if score $tmp tmp matches ..6 at @n[tag=victim] run particle minecraft:dust{color:[1,1,0],scale:2} ~ ~1 ~ 0.5 0.5 0.5 10 20 force @s

execute if score $tmp tmp matches 7.. as @n[tag=victim] at @s run particle minecraft:dust{color:16711680,scale:2} ^ ^1.8 ^0.5 0.5 0.5 0.5 10 20 force @s
execute if score $tmp tmp matches 7.. at @n[tag=victim] run particle minecraft:dust{color:16711680,scale:2} ~ ~1 ~ 0.5 0.5 0.5 10 20 force @s

execute as @n[tag=victim] at @s run playsound minecraft:entity.sheep.shear neutral @s ~ ~ ~ 2 2
execute at @s run playsound minecraft:entity.sheep.shear neutral @s ~ ~ ~ 2 2
execute if score $tmp tmp matches 7.. at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.7

scoreboard players set @s weapon17ct 40
tag @s remove w17melee
scoreboard players reset $tmp tmp